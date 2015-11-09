/**
  This file was autogenerated by UE4HaxeExternGenerator using UHT definitions. It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
  In order to add more definitions, create or edit a type with the same name/package, but with a `_Extra` suffix
**/
package unreal;

@:glueCppIncludes("Animation/AnimBlueprintGeneratedClass.h")
@:uextern extern class FBakedAnimationState {
  @:uname('new') public static function create():PHaxeCreated<unreal.FBakedAnimationState>;
  
  /**
    Indices into the property array for player nodes in the state
  **/
  public var PlayerNodeIndices : unreal.TArray<unreal.Int32>;
  public var EntryRuleNodeIndex : unreal.Int32;
  public var bIsAConduit : Bool;
  public var FullyBlendedNotify : unreal.Int32;
  public var EndNotify : unreal.Int32;
  public var StartNotify : unreal.Int32;
  
  /**
    The root node index (into the AnimNodeProperties array of the UAnimBlueprintGeneratedClass)
  **/
  public var StateRootNodeIndex : unreal.Int32;
  
  /**
    Set of legal transitions out of this state; already in priority order
  **/
  public var Transitions : unreal.TArray<unreal.FBakedStateExitTransition>;
  
  /**
    The name of this state
  **/
  public var StateName : unreal.FName;
  
}
