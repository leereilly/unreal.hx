/**
  This file was autogenerated by UE4HaxeExternGenerator using UHT definitions. It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
  In order to add more definitions, create or edit a type with the same name/package, but with a `_Extra` suffix
**/
package unreal.editor;


/**
  Base class for import data and options used when importing any asset from FBX
**/
@:umodule("UnrealEd")
@:glueCppIncludes("Factories/FbxAssetImportData.h")
@:uextern extern class UFbxAssetImportData extends unreal.UAssetImportData {
  public var ImportUniformScale : unreal.Float32;
  public var ImportRotation : unreal.FRotator;
  public var ImportTranslation : unreal.FVector;
  
}
