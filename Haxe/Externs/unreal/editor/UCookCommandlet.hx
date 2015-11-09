/**
  This file was autogenerated by UE4HaxeExternGenerator using UHT definitions. It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
  In order to add more definitions, create or edit a type with the same name/package, but with a `_Extra` suffix
**/
package unreal.editor;

@:umodule("UnrealEd")
@:glueCppIncludes("Commandlets/CookCommandlet.h")
@:uextern extern class UCookCommandlet extends unreal.UCommandlet {
  
  /**
    List of asset types that will force GC after loading them during cook
  **/
  public var FullGCAssetClassNames : unreal.TArray<unreal.FString>;
  
}
