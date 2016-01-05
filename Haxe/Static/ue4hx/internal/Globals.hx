package ue4hx.internal;
import haxe.macro.Expr;
import haxe.macro.Context;
import haxe.macro.Type;
import sys.FileSystem;
import sys.io.File;

using StringTools;

/**
  Per-build globals
 **/
class Globals {
  public static var MIN_BUILDTOOL_VERSION_LEVEL = 3;

  public static var cur(default,null):Globals = new Globals();

  @:isVar public var haxeRuntimeDir(get,null):String;
  @:isVar public var glueTargetModule(get,null):String;
  public var module(get,null):String;

  private var targetModuleSet:Bool = false;

  private function get_haxeRuntimeDir() {
    if (this.haxeRuntimeDir == null)
      this.setHaxeRuntimeDir();
    return this.haxeRuntimeDir;
  }
  inline private function get_glueTargetModule() {
    if (this.targetModuleSet) {
      return glueTargetModule;
    } else {
      setGlueTargetModule();
      return glueTargetModule;
    }
  }

  private function get_module() {
    var ret = haxeRuntimeDir.replace('\\','/');
    while (ret.endsWith('/'))
      ret = ret.substr(0,-1);
    return ret.substr(ret.lastIndexOf('/')+1);
  }

  public function setHaxeRuntimeDir() {
    var dir = haxeRuntimeDir = Context.definedValue('haxe_runtime_dir');

#if !bake_externs
    if (dir == null) {
      Context.warning('Unreal Glue: The haxe_runtime_dir directive is not set. This compilation may fail', Context.currentPos());
    }
    else
#end
    {
      haxeRuntimeDir = FileSystem.fullPath(dir).replace('\\','/');
    }
  }

  public function setGlueTargetModule() {
    this.glueTargetModule = Context.definedValue('glue_target_module');
    this.targetModuleSet = true;
  }


  public static function reset() {
    cur = new Globals();
  }

  public var builtGlueTypes:Map<String,Bool> = new Map();
  public var buildingGlueTypes:Map<String,DelayedGlue> = new Map();
  public var uobject:Type;
  /**
    Linked list of glue types that need to be generated
   **/
  public var gluesToGenerate:Lst<String>;
  /**
    Linked list of uobject extensions which need to be exposed
   **/
  public var uextensions:Lst<String>;
  /**
    This determines which type parameter glues need to be built. It gets added whenever
    a TypeConv is created with a type that has type parameters, and is consumed asynchronously
   **/
  public var typeParamsToBuild:Lst<{ base:BaseType, args:Array<TypeConv>, pos:Position, feature:String }>;
  /**
    In order to avoid infinite cycles of type parameter glue building, this keeps a list of all
    type parameters that were already built
   **/
  public var builtParams:Map<String, Bool> = new Map();

  /**
    Linked list of types that have type parameters
   **/
  public var typesThatNeedTParams:Lst<String>;

  /**
    Tells which is the current feature being built. This is needed to add the needed dependencies
    to DCE
   **/
  public var currentFeature:Null<String>;

  /**
    List of all defined types that can be cached in this build. They will be cached so the compilation server can pick it up again
   **/
  public var cachedBuiltTypes:Array<String> = [];

  public var toDefineTParams:Map<String, TypeDefinition> = new Map();

  public var gluesTouched:Map<String,Bool> = new Map();
  public var canCreateTypes:Bool;

  public var hasOlderCache:Null<Bool>;

  private var tparamsDeps:Map<String, Map<String, Bool>> = new Map();

  function new() {
  }

  /**
    Checks if the latest compilation was using the same defines as this
   **/
  public function checkOlderCache() {
    if (hasOlderCache == null) {
      var dir = haxeRuntimeDir;
      if (dir == null) return;
      if (FileSystem.exists('$dir/Generated/defines.txt')) {
        var defines = getDefinesString();
        this.hasOlderCache = File.getContent('$dir/Generated/defines.txt') == defines;
      } else {
        this.hasOlderCache = false;
      }
    }
  }

  /**
    Reserves the cache file to mark we're in a inconsistent state. An error between `reserveCacheFile` and
    `setCacheFile` will force the next compilation to flush its cache
   **/
  public function reserveCacheFile() {
    var dir = haxeRuntimeDir;
    if (!FileSystem.exists('$dir/Generated')) {
      FileSystem.createDirectory('$dir/Generated');
    }
    File.saveContent('$dir/Generated/defines.txt', '');
  }

  /**
    Sets the cache file to indicate that the last compilation was using our defines
   **/
  public function setCacheFile() {
    var dir = haxeRuntimeDir;
    if (!FileSystem.exists('$dir/Generated')) {
      FileSystem.createDirectory('$dir/Generated');
    }
    File.saveContent('$dir/Generated/defines.txt', getDefinesString());
  }

  /**
    Loads previously saved type parameters
   **/
  public function loadCachedTypes() {
#if IN_COMPILATION_SERVER
    trace('loading cache...');
    // first we'll create the type if it doesn't exist
    try {
      Context.getType('ue4hx.CachedData');
    } catch(e:Dynamic) {
      Context.defineType({
        name:'CachedData',
        pack:['ue4hx'],
        pos: Context.currentPos(),
        kind: TDClass(),
        fields: []
      });
    }

    switch(Context.getType('ue4hx.CachedData')) {
      case TInst(_.get() => c,_):
        if (c.meta.has(':savedTypes')) {
          for (type in MacroHelpers.extractStrings(c.meta, ':savedTypes')) {
            this.cachedBuiltTypes.push(type);
            Context.getType(type);
          }
        }
      case _:
        throw 'assert';
    }
#end
  }

  /**
    Saves cached types for further compilations
   **/
  public function saveCachedBuilt() {
#if IN_COMPILATION_SERVER
    trace('saving cached types...');
    if (this.cachedBuiltTypes.length > 0) {
      switch(Context.getType('ue4hx.CachedData')) {
        case TInst(_.get() => c,_):
          c.meta.remove(':savedTypes');
          c.meta.add(':savedTypes', [for (t in this.cachedBuiltTypes) macro $v{t}], c.pos);
        case _:
          throw 'assert';
      }
    }
#end
  }

  private function getDefinesString():String {
    var ret = new StringBuf();
    var defs = Context.getDefines();
    var sorted = [ for (def in defs.keys()) def ];
    sorted.sort(Reflect.compare);
    for (def in sorted) {
      if (def == "IN_COMPILATION_SERVER") continue;
      ret.add(def);
      ret.add(' : ');
      ret.add(defs[def]);
      ret.add('\n');
    };
    return ret.toString();
  }

  public function addDep(tparamClass:TypeRef, feat:String) {
    var name = tparamClass.getClassPath(true);
    var deps = this.tparamsDeps[name];
    if (deps == null) {
      this.tparamsDeps[name] = deps = new Map();
    }
    deps[feat] = true;
  }

  public function getDeps(className:String) {
    var deps = tparamsDeps[className];
    if (deps == null) {
      return null;
    }
    if (deps.exists('keep')) {
      return ['keep'];
    }

    return [ for (k in deps.keys()) k ];
  }
}
