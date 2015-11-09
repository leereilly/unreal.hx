/**
  This file was autogenerated by UE4HaxeExternGenerator using UHT definitions. It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
  In order to add more definitions, create or edit a type with the same name/package, but with a `_Extra` suffix
**/
package unreal;


/**
  for FPostprocessSettings
**/
@:glueCppIncludes("Engine/PostProcessVolume.h")
@:uextern extern class APostProcessVolume extends unreal.AVolume implements unreal.IInterface_PostProcessVolume {
  
  /**
    Whether this volume bounds are used or it affects the whole world.
  **/
  public var bUnbound : Bool;
  
  /**
    Whether this volume is enabled or not.
  **/
  public var bEnabled : Bool;
  
  /**
    0:no effect, 1:full effect
  **/
  public var BlendWeight : unreal.Float32;
  
  /**
    World space radius around the volume that is used for blending (only if not unbound).
  **/
  public var BlendRadius : unreal.Float32;
  
  /**
    Priority of this volume. In the case of overlapping volumes the one with the highest priority
    overrides the lower priority ones. The order is undefined if two or more overlapping volumes have the same priority.
  **/
  public var Priority : unreal.Float32;
  
  /**
    Post process settings to use for this volume.
  **/
  public var Settings : unreal.FPostProcessSettings;
  
}
