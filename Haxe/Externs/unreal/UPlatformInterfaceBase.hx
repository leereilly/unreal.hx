/**
  This file was autogenerated by UE4HaxeExternGenerator using UHT definitions. It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
  In order to add more definitions, create or edit a type with the same name/package, but with a `_Extra` suffix
**/
package unreal;

@:glueCppIncludes("Engine/PlatformInterfaceBase.h")
@:uextern extern class UPlatformInterfaceBase extends unreal.UObject {
  
  /**
    Array of delegate arrays. Only add and remove via helper functions, and call via the helper delegate call function
  **/
  public var AllDelegates : unreal.TArray<unreal.FDelegateArray>;
  
}
