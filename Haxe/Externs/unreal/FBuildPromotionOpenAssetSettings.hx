/**
  This file was autogenerated by UE4HaxeExternGenerator using UHT definitions. It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
  In order to add more definitions, create or edit a type with the same name/package, but with a `_Extra` suffix
**/
package unreal;


/**
  Holds settings for the open assets stage of the build promotion test
**/
@:glueCppIncludes("Tests/AutomationTestSettings.h")
@:uextern extern class FBuildPromotionOpenAssetSettings {
  @:uname('new') public static function create():PHaxeCreated<unreal.FBuildPromotionOpenAssetSettings>;
  
  /**
    The texture asset to open
  **/
  public var TextureAsset : unreal.FFilePath;
  
  /**
    The static mesh asset to open
  **/
  public var StaticMeshAsset : unreal.FFilePath;
  
  /**
    The skeletal mesh asset to open
  **/
  public var SkeletalMeshAsset : unreal.FFilePath;
  
  /**
    The particle system asset to open
  **/
  public var ParticleSystemAsset : unreal.FFilePath;
  
  /**
    The material asset to open
  **/
  public var MaterialAsset : unreal.FFilePath;
  
  /**
    The blueprint asset to open
  **/
  public var BlueprintAsset : unreal.FFilePath;
  
}
