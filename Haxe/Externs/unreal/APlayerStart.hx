/**
  This file was autogenerated by UE4HaxeExternGenerator using UHT definitions. It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
  In order to add more definitions, create or edit a type with the same name/package, but with a `_Extra` suffix
**/
package unreal;


/**
  This class indicates a location where a player can spawn when the game begins
  
  @see https://docs.unrealengine.com/latest/INT/Engine/Actors/PlayerStart/
**/
@:glueCppIncludes("GameFramework/PlayerStart.h")
@:uextern extern class APlayerStart extends unreal.ANavigationObjectBase {
  #if WITH_EDITORONLY_DATA
  public var ArrowComponent : unreal.UArrowComponent;
  #end // WITH_EDITORONLY_DATA
  
  /**
    Used when searching for which playerstart to use.
  **/
  public var PlayerStartTag : unreal.FName;
  
}
