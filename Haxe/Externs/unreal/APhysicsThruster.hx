/**
  This file was autogenerated by UE4HaxeExternGenerator using UHT definitions. It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
  In order to add more definitions, create or edit a type with the same name/package, but with a `_Extra` suffix
**/
package unreal;


/**
  Attach one of these on an object using physics simulation and it will apply a force down the negative-X direction
  ie. point X in the direction you want the thrust in.
**/
@:glueCppIncludes("PhysicsEngine/PhysicsThruster.h")
@:uextern extern class APhysicsThruster extends unreal.ARigidBodyBase {
  #if WITH_EDITORONLY_DATA
  public var SpriteComponent : unreal.UBillboardComponent;
  public var ArrowComponent : unreal.UArrowComponent;
  #end // WITH_EDITORONLY_DATA
  public var ThrusterComponent : unreal.UPhysicsThrusterComponent;
  
}
