/**
  This file was autogenerated by UE4HaxeExternGenerator using UHT definitions. It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
  In order to add more definitions, create or edit a type with the same name/package, but with a `_Extra` suffix
**/
package unreal;

@:glueCppIncludes("Engine/InputActionDelegateBinding.h")
@:uextern extern class FBlueprintInputDelegateBinding {
  @:uname('new') public static function create():PHaxeCreated<unreal.FBlueprintInputDelegateBinding>;
  public var bOverrideParentBinding : Bool;
  public var bExecuteWhenPaused : Bool;
  public var bConsumeInput : Bool;
  
}
