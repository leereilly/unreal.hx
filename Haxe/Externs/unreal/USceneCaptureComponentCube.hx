/**
  This file was autogenerated by UE4HaxeExternGenerator using UHT definitions. It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
  In order to add more definitions, create or edit a type with the same name/package, but with a `_Extra` suffix
**/
package unreal;


/**
  Used to capture a 'snapshot' of the scene from a 6 planes and feed it to a render target.
**/
@:glueCppIncludes("Components/SceneCaptureComponentCube.h")
@:uextern extern class USceneCaptureComponentCube extends unreal.USceneCaptureComponent {
  
  /**
    Temporary render target that can be used by the editor.
  **/
  public var TextureTarget : unreal.UTextureRenderTargetCube;
  
}
