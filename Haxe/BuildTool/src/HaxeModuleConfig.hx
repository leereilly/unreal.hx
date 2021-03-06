/**
  Allows a more fine-grained configuration of the haxe build module.
  All properties added here will be optional and not setting them will make UE4Haxe use
  the default settings
 **/
typedef HaxeModuleConfig = {
  /**
    Disables Haxe compilation entirely
    @default false
   **/
  ?disabled: Bool, /* = false */
  /**
    Force bake all externs
   **/
  ?forceBakeExterns:Bool,
  /**
    Overrides DCE config
   **/
  ?dce:Dce, /* can be 'full' or 'no' */
  /**
    Adds compilation arguments to the build hxml.
    This follows the hxml convention, with each argument representing a line in the hxml.
    Empty lines and comments are supported
   **/
  ?extraCompileArgs:Array<String>,
  /**
    Adds extra static classpaths to be compiled
    Every .hx type in this folder will be compiled
   **/
  ?extraStaticClasspaths: Array<String>,

  /**
    Tells whether timing should be disabled
   **/
  ?disableTimers:Bool,
}

@:enum abstract Dce(String) from String {
  var DceStd = 'std';
  var DceFull = 'full';
  var DceNo = 'no';
}
