/**
  This file was autogenerated by UE4HaxeExternGenerator using UHT definitions. It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
  In order to add more definitions, create or edit a type with the same name/package, but with a `_Extra` suffix
**/
package unreal;


/**
  Per-light settings for Lightmass
**/
@:glueCppIncludes("Components/DirectionalLightComponent.h")
@:uextern extern class FLightmassLightSettings {
  @:uname('new') public static function create():PHaxeCreated<unreal.FLightmassLightSettings>;
  
  /**
    Whether to use area shadows for stationary light precomputed shadowmaps.
    Area shadows get softer the further they are from shadow casters, but require higher lightmap resolution to get the same quality where the shadow is sharp.
  **/
  public var bUseAreaShadowsForStationaryLight : Bool;
  
  /**
    Controls the falloff of shadow penumbras
  **/
  public var ShadowExponent : unreal.Float32;
  
  /**
    0 will be completely desaturated, 1 will be unchanged
  **/
  public var IndirectLightingSaturation : unreal.Float32;
  
}
