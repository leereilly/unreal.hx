/**
  This file was autogenerated by UE4HaxeExternGenerator using UHT definitions. It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
  In order to add more definitions, create or edit a type with the same name/package, but with a `_Extra` suffix
**/
package unreal;

@:glueCppIncludes("Camera/CameraAnim.h")
@:uextern extern class FWeightedBlendable {
  @:uname('new') public static function create():PHaxeCreated<unreal.FWeightedBlendable>;
  
  /**
    should be of the IBlendableInterface* type but UProperties cannot express that
  **/
  public var Object : unreal.UObject;
  
  /**
    0:no effect .. 1:full effect
  **/
  public var Weight : unreal.Float32;
  
}
