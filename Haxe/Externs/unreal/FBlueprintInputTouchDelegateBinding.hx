/**
  This file was autogenerated by UE4HaxeExternGenerator using UHT definitions. It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
  In order to add more definitions, create or edit a type with the same name/package, but with a `_Extra` suffix
**/
package unreal;

@:glueCppIncludes("Engine/InputTouchDelegateBinding.h")
@:uextern extern class FBlueprintInputTouchDelegateBinding extends unreal.FBlueprintInputDelegateBinding {
  @:uname('new') public static function create():PHaxeCreated<unreal.FBlueprintInputTouchDelegateBinding>;
  public var FunctionNameToBind : unreal.FName;
  public var InputKeyEvent : unreal.EInputEvent;
  
}
