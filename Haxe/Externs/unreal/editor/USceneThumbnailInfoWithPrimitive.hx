/**
  This file was autogenerated by UE4HaxeExternGenerator using UHT definitions. It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
  In order to add more definitions, create or edit a type with the same name/package, but with a `_Extra` suffix
**/
package unreal.editor;

@:umodule("UnrealEd")
@:glueCppIncludes("ThumbnailRendering/SceneThumbnailInfoWithPrimitive.h")
@:uextern extern class USceneThumbnailInfoWithPrimitive extends unreal.editor.USceneThumbnailInfo {
  
  /**
    The custom mesh used when the primitive type is TPT_None
  **/
  public var PreviewMesh : unreal.FStringAssetReference;
  
  /**
    The type of primitive used in this thumbnail
  **/
  public var PrimitiveType : unreal.editor.EThumbnailPrimType;
  
}
