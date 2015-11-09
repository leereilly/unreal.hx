/**
  This file was autogenerated by UE4HaxeExternGenerator using UHT definitions. It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
  In order to add more definitions, create or edit a type with the same name/package, but with a `_Extra` suffix
**/
package unreal;

@:glueCppIncludes("Particles/Velocity/ParticleModuleVelocityBase.h")
@:uextern extern class UParticleModuleVelocityBase extends unreal.UParticleModule {
  
  /**
    If true, then apply the particle system components scale to the velocity value.
  **/
  public var bApplyOwnerScale : Bool;
  
  /**
    If true, then treat the velocity as world-space defined.
    NOTE: LocalSpace emitters that are moving will see strange results...
  **/
  public var bInWorldSpace : Bool;
  
}
