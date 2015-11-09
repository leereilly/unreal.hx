/**
  This file was autogenerated by UE4HaxeExternGenerator using UHT definitions. It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
  In order to add more definitions, create or edit a type with the same name/package, but with a `_Extra` suffix
**/
package unreal;


/**
  Specifies which shader generated offsets should included in the world position (displacement/WPO etc.)
**/
@:glueCppIncludes("Materials/MaterialExpressionWorldPosition.h")
@:uname("EWorldPositionIncludedOffsets")
@:uextern extern enum EWorldPositionIncludedOffsets {
  
  /**
    Absolute world position with all material shader offsets applied
    @DisplayName Absolute World Position (Including Material Shader Offsets)
  **/
  @DisplayName("Absolute World Position (Including Material Shader Offsets)")
  WPT_Default;
  
  /**
    Absolute world position with no material shader offsets applied
    @DisplayName Absolute World Position (Excluding Material Shader Offsets)
  **/
  @DisplayName("Absolute World Position (Excluding Material Shader Offsets)")
  WPT_ExcludeAllShaderOffsets;
  
  /**
    Camera relative world position with all material shader offsets applied
    @DisplayName Camera Relative World Position (Including Material Shader Offsets)
  **/
  @DisplayName("Camera Relative World Position (Including Material Shader Offsets)")
  WPT_CameraRelative;
  
  /**
    Camera relative world position with no material shader offsets applied
    @DisplayName Camera Relative World Position (Excluding Material Shader Offsets)
  **/
  @DisplayName("Camera Relative World Position (Excluding Material Shader Offsets)")
  WPT_CameraRelativeNoOffsets;
  
}
