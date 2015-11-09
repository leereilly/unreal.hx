/**
  This file was autogenerated by UE4HaxeExternGenerator using UHT definitions. It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
  In order to add more definitions, create or edit a type with the same name/package, but with a `_Extra` suffix
**/
package unreal;


/**
  Material interface for USkeletalMesh - contains a material and a shadow casting flag
**/
@:glueCppIncludes("Engine/SkeletalMesh.h")
@:uextern extern class FSkeletalMaterial {
  @:uname('new') public static function create():PHaxeCreated<unreal.FSkeletalMaterial>;
  public var bEnableShadowCasting : Bool;
  public var MaterialInterface : unreal.UMaterialInterface;
  
}
