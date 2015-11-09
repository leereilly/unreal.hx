/**
  This file was autogenerated by UE4HaxeExternGenerator using UHT definitions. It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
  In order to add more definitions, create or edit a type with the same name/package, but with a `_Extra` suffix
**/
package unreal;


/**
  defines how MipValue is used
**/
@:glueCppIncludes("Materials/MaterialExpressionTextureSample.h")
@:uname("ETextureMipValueMode")
@:uextern extern enum ETextureMipValueMode {
  
  /**
    Use hardware computed sample's mip level with automatic anisotropic filtering support.
    @DisplayName None (use computed mip level)
  **/
  @DisplayName("None (use computed mip level)")
  TMVM_None;
  
  /**
    Explicitly compute the sample's mip level. Disables anisotropic filtering.
    @DisplayName MipLevel (absolute, 0 is full resolution)
  **/
  @DisplayName("MipLevel (absolute, 0 is full resolution)")
  TMVM_MipLevel;
  
  /**
    Bias the hardware computed sample's mip level. Disables anisotropic filtering.
    @DisplayName MipBias (relative to the computed mip level)
  **/
  @DisplayName("MipBias (relative to the computed mip level)")
  TMVM_MipBias;
  
  /**
    Explicitly compute the sample's DDX and DDY for anisotropic filtering.
    @DisplayName Derivative (explicit derivative to compute mip level)
  **/
  @DisplayName("Derivative (explicit derivative to compute mip level)")
  TMVM_Derivative;
  
}
