/**
  This file was autogenerated by UE4HaxeExternGenerator using UHT definitions. It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
  In order to add more definitions, create or edit a type with the same name/package, but with a `_Extra` suffix
**/
package unreal;

@:glueCppIncludes("Particles/TypeData/ParticleModuleTypeDataGpu.h")
@:uextern extern class UParticleModuleTypeDataGpu extends unreal.UParticleModuleTypeDataBase {
  
  /**
    When true, all existing partilces are cleared when the emitter is initialized.
  **/
  public var bClearExistingParticlesOnInit : Bool;
  
  /**
    TEMP: How much to stretch sprites based on camera motion blur.
  **/
  public var CameraMotionBlurAmount : unreal.Float32;
  
  /**
    Data used to initialize runtime resources.
  **/
  public var ResourceData : unreal.FGPUSpriteResourceData;
  
  /**
    Information for runtime simulation.
  **/
  public var EmitterInfo : unreal.FGPUSpriteEmitterInfo;
  
}
