/**
  This file was autogenerated by UE4HaxeExternGenerator using UHT definitions. It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
  In order to add more definitions, create or edit a type with the same name/package, but with a `_Extra` suffix
**/
package unreal.introtutorials;


/**
  Tutorial settings used to track completion state
**/
@:umodule("IntroTutorials")
@:glueCppIncludes("Private/TutorialStateSettings.h")
@:uextern extern class UTutorialStateSettings extends unreal.UObject {
  public var TutorialsProgress : unreal.TArray<unreal.introtutorials.FTutorialProgress>;
  
}
