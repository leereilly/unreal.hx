/**
  This file was autogenerated by UE4HaxeExternGenerator using UHT definitions. It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
  In order to add more definitions, create or edit a type with the same name/package, but with a `_Extra` suffix
**/
package unreal.paperspritesheetimporter;

@:umodule("PaperSpriteSheetImporter")
@:glueCppIncludes("Private/PaperSpriteSheet.h")
@:uextern extern class UPaperSpriteSheet extends unreal.UObject {
  #if WITH_EDITORONLY_DATA
  
  /**
    Import data for this
  **/
  public var AssetImportData : unreal.UAssetImportData;
  #end // WITH_EDITORONLY_DATA
  
  /**
    The asset that was created for NormalMapTextureName (if any)
  **/
  public var NormalMapTexture : unreal.UTexture2D;
  
  /**
    The name of the normal map texture during import (if any)
  **/
  public var NormalMapTextureName : unreal.FString;
  
  /**
    The asset that was created for TextureName
  **/
  public var Texture : unreal.UTexture2D;
  
  /**
    The name of the default or diffuse texture during import
  **/
  public var TextureName : unreal.FString;
  
  /**
    The names of sprites during import
  **/
  public var SpriteNames : unreal.TArray<unreal.FString>;
  
}
