/**
  This file was autogenerated by UE4HaxeExternGenerator using UHT definitions. It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
  In order to add more definitions, create or edit a type with the same name/package, but with a `_Extra` suffix
**/
package unreal;


/**
  like EPassInputId but can expose more e.g. GBuffer
**/
@:glueCppIncludes("Materials/MaterialExpressionSceneTexture.h")
@:uname("ESceneTextureId")
@:uextern extern enum ESceneTextureId {
  
  /**
    Scene color, normal post process passes should use PostProcessInput0
    @DisplayName SceneColor
  **/
  @DisplayName("SceneColor")
  PPI_SceneColor;
  
  /**
    Scene depth, single channel, contains the linear depth of the opaque objects
    @DisplayName SceneDepth
  **/
  @DisplayName("SceneDepth")
  PPI_SceneDepth;
  
  /**
    Material diffuse, RGB color (GBuffer)
    @DisplayName DiffuseColor
  **/
  @DisplayName("DiffuseColor")
  PPI_DiffuseColor;
  
  /**
    Material specular, RGB color (GBuffer)
    @DisplayName SpecularColor
  **/
  @DisplayName("SpecularColor")
  PPI_SpecularColor;
  
  /**
    Material subsurface, RGB color (GBuffer)
    @DisplayName SubsurfaceColor
  **/
  @DisplayName("SubsurfaceColor")
  PPI_SubsurfaceColor;
  
  /**
    Material base, RGB color (GBuffer)
    @DisplayName BaseColor
  **/
  @DisplayName("BaseColor")
  PPI_BaseColor;
  
  /**
    Material specular, single channel (GBuffer)
    @DisplayName Specular
  **/
  @DisplayName("Specular")
  PPI_Specular;
  
  /**
    Material metallic, single channel (GBuffer)
    @DisplayName Metallic
  **/
  @DisplayName("Metallic")
  PPI_Metallic;
  
  /**
    Normal, RGB in -1..1 range, not normalized (GBuffer)
    @DisplayName WorldNormal
  **/
  @DisplayName("WorldNormal")
  PPI_WorldNormal;
  
  /**
    Not yet supported
    @DisplayName SeparateTranslucency
  **/
  @DisplayName("SeparateTranslucency")
  PPI_SeparateTranslucency;
  
  /**
    Material opacity, single channel (GBuffer)
    @DisplayName Opacity
  **/
  @DisplayName("Opacity")
  PPI_Opacity;
  
  /**
    Material roughness, single channel (GBuffer)
    @DisplayName Roughness
  **/
  @DisplayName("Roughness")
  PPI_Roughness;
  
  /**
    Material ambient occlusion, single channel (GBuffer)
    @DisplayName MaterialAO
  **/
  @DisplayName("MaterialAO")
  PPI_MaterialAO;
  
  /**
    Scene depth, single channel, contains the linear depth of the opaque objects rendered with CustomDepth (mesh property)
    @DisplayName CustomDepth
  **/
  @DisplayName("CustomDepth")
  PPI_CustomDepth;
  
  /**
    Input #0 of this postprocess pass, usually the only one hooked up
    @DisplayName PostProcessInput0
  **/
  @DisplayName("PostProcessInput0")
  PPI_PostProcessInput0;
  
  /**
    Input #1 of this postprocess pass, usually not used
    @DisplayName PostProcessInput1
  **/
  @DisplayName("PostProcessInput1")
  PPI_PostProcessInput1;
  
  /**
    Input #2 of this postprocess pass, usually not used
    @DisplayName PostProcessInput2
  **/
  @DisplayName("PostProcessInput2")
  PPI_PostProcessInput2;
  
  /**
    Input #3 of this postprocess pass, usually not used
    @DisplayName PostProcessInput3
  **/
  @DisplayName("PostProcessInput3")
  PPI_PostProcessInput3;
  
  /**
    Input #4 of this postprocess pass, usually not used
    @DisplayName PostProcessInput4
  **/
  @DisplayName("PostProcessInput4")
  PPI_PostProcessInput4;
  
  /**
    Input #5 of this postprocess pass, usually not used
    @DisplayName PostProcessInput5
  **/
  @DisplayName("PostProcessInput5")
  PPI_PostProcessInput5;
  
  /**
    Input #6 of this postprocess pass, usually not used
    @DisplayName PostProcessInput6
  **/
  @DisplayName("PostProcessInput6")
  PPI_PostProcessInput6;
  
  /**
    Decal Mask, single bit
    @DisplayName Decal Mask
  **/
  @DisplayName("Decal Mask")
  PPI_DecalMask;
  
  /**
    Shading model
    @DisplayName Shading Model
  **/
  @DisplayName("Shading Model")
  PPI_ShadingModel;
  
  /**
    Ambient Occlusion, single channel
    @DisplayName Ambient Occlusion
  **/
  @DisplayName("Ambient Occlusion")
  PPI_AmbientOcclusion;
  
  /**
    Scene stencil, contains CustomStencil mesh property of the opaque objects rendered with CustomDepth
    @DisplayName CustomStencil
  **/
  @DisplayName("CustomStencil")
  PPI_CustomStencil;
  
}
