/**
  This file was autogenerated by UE4HaxeExternGenerator using UHT definitions. It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
  In order to add more definitions, create or edit a type with the same name/package, but with a `_Extra` suffix
**/
package unreal.gameprojectgeneration;

@:umodule("GameProjectGeneration")
@:glueCppIncludes("TemplateProjectDefs.h")
@:uextern extern class UTemplateProjectDefs extends unreal.UObject {
  
  /**
    Shared feature packs. The files in these packs listed in these structures marked as 'additionalfiles' will be copied on project generation
  **/
  public var SharedContentPacks : unreal.TArray<unreal.addcontentdialog.FFeaturePackLevelSet>;
  
  /**
    What detail level to edit when editing shared template resources
  **/
  public var EditDetailLevelPreference : unreal.addcontentdialog.EFeaturePackDetailLevel;
  
  /**
    Optional list of feature packs to include
  **/
  public var PacksToInclude : unreal.TArray<unreal.FString>;
  
  /**
    Should we allow creation of a project from this template
  **/
  public var bAllowProjectCreation : Bool;
  public var AssetTypes : unreal.FString;
  public var ClassTypes : unreal.FString;
  public var Category : unreal.FName;
  public var SortKey : unreal.FString;
  public var ReplacementsInFiles : unreal.TArray<unreal.gameprojectgeneration.FTemplateReplacement>;
  public var FilenameReplacements : unreal.TArray<unreal.gameprojectgeneration.FTemplateReplacement>;
  public var FolderRenames : unreal.TArray<unreal.gameprojectgeneration.FTemplateFolderRename>;
  public var FilesToIgnore : unreal.TArray<unreal.FString>;
  public var FoldersToIgnore : unreal.TArray<unreal.FString>;
  public var LocalizedDescriptions : unreal.TArray<unreal.gameprojectgeneration.FLocalizedTemplateString>;
  public var LocalizedDisplayNames : unreal.TArray<unreal.gameprojectgeneration.FLocalizedTemplateString>;
  
}
