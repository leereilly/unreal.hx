/**
   * 
   * WARNING! This file was autogenerated by: 
   *  _   _ _____     ___   _   _ __   __ 
   * | | | |  ___|   /   | | | | |\ \ / / 
   * | | | | |__    / /| | | |_| | \ V /  
   * | | | |  __|  / /_| | |  _  | /   \  
   * | |_| | |___  \___  | | | | |/ /^\ \ 
   *  \___/\____/      |_/ \_| |_/\/   \/ 
   * 
   * This file was autogenerated by UE4HaxeExternGenerator using UHT definitions. It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
   * In order to add more definitions, create or edit a type with the same name/package, but with an `_Extra` suffix
**/
package unreal.kismet;


/**
  FBlueprintPaletteFavorites
**/
@:umodule("Kismet")
@:glueCppIncludes("BlueprintPaletteFavorites.h")
@:uextern extern class UBlueprintPaletteFavorites extends unreal.UObject {
  
  /**
    Users could load pre-existing profiles (intended to share favorites, and
    hook into tutorials). If empty, the default profile will be loaded; if
    the user has customized a pre-existing profile, then this will be "CustomProfile".
  **/
  public var CurrentProfile : unreal.FString;
  
  /**
    A list of strings that are used to identify specific palette actions.
    This is what gets saved out when the user has customized their own set,
    and is not updated until PreSave().
  **/
  public var CustomFavorites : unreal.TArray<unreal.FString>;
  
}
