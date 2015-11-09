/**
  This file was autogenerated by UE4HaxeExternGenerator using UHT definitions. It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
  In order to add more definitions, create or edit a type with the same name/package, but with a `_Extra` suffix
**/
package unreal;

@:glueCppIncludes("Materials/Material.h")
@:uname("ETranslucencyLightingMode")
@:uextern extern enum ETranslucencyLightingMode {
  
  /**
    Lighting will be calculated for a volume, without directionality.  Use this on particle effects like smoke and dust.
    This is the cheapest lighting method, however the material normal is not taken into account.
    @DisplayName Volumetric Non Directional
  **/
  @DisplayName("Volumetric Non Directional")
  TLM_VolumetricNonDirectional;
  
  /**
    Lighting will be calculated for a volume, with directionality so that the normal of the material is taken into account.
    Note that the default particle tangent space is facing the camera, so enable bGenerateSphericalParticleNormals to get a more useful tangent space.
    @DisplayName Volumetric Directional
  **/
  @DisplayName("Volumetric Directional")
  TLM_VolumetricDirectional;
  
  /**
    Lighting will be calculated for a surface. The light in accumulated in a volume so the result is blurry
    (fixed resolution), limited distance but the per pixel cost is very low. Use this on translucent surfaces like glass and water.
    @DisplayName Surface TranslucencyVolume
  **/
  @DisplayName("Surface TranslucencyVolume")
  TLM_Surface;
  
  /**
    Lighting will be calculated for a surface. Use this on translucent surfaces like glass and water.
    Higher quality than Surface but more expensive (loops through point lights with some basic culling, only inverse square, expensive, no shadow support yet)
    Requires 'r.ForwardLighting' to be 1
    @DisplayName Surface PerPixel (experimental, limited features)
  **/
  @DisplayName("Surface PerPixel (experimental, limited features)")
  TLM_SurfacePerPixelLighting;
  
}
