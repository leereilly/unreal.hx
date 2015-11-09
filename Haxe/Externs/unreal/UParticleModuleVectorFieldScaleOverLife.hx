/**
  This file was autogenerated by UE4HaxeExternGenerator using UHT definitions. It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
  In order to add more definitions, create or edit a type with the same name/package, but with a `_Extra` suffix
**/
package unreal;

@:glueCppIncludes("Particles/VectorField/ParticleModuleVectorFieldScaleOverLife.h")
@:uextern extern class UParticleModuleVectorFieldScaleOverLife extends unreal.UParticleModuleVectorFieldBase {
  
  /**
    Per-particle vector field scale. Evaluated using particle relative time.
  **/
  public var VectorFieldScaleOverLife : unreal.UDistributionFloat;
  
}
