/**
  This file was autogenerated by UE4HaxeExternGenerator using UHT definitions. It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
  In order to add more definitions, create or edit a type with the same name/package, but with a `_Extra` suffix
**/
package unreal;

@:glueCppIncludes("AI/Navigation/NavCollision.h")
@:uextern extern class FNavCollisionBox {
  @:uname('new') public static function create():PHaxeCreated<unreal.FNavCollisionBox>;
  public var Extent : unreal.FVector;
  public var Offset : unreal.FVector;
  
}
