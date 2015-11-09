/**
  This file was autogenerated by UE4HaxeExternGenerator using UHT definitions. It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
  In order to add more definitions, create or edit a type with the same name/package, but with a `_Extra` suffix
**/
package unreal;


/**
  Holds settings for the material editor build promotion tests
**/
@:glueCppIncludes("Tests/AutomationTestSettings.h")
@:uextern extern class FMaterialEditorPromotionSettings {
  @:uname('new') public static function create():PHaxeCreated<unreal.FMaterialEditorPromotionSettings>;
  
  /**
    Default material asset to apply to static meshes *
  **/
  public var DefaultNormalTexture : unreal.FFilePath;
  
  /**
    Default material asset to apply to static meshes *
  **/
  public var DefaultDiffuseTexture : unreal.FFilePath;
  
  /**
    Default material asset to apply to static meshes *
  **/
  public var DefaultMaterialAsset : unreal.FFilePath;
  
}
