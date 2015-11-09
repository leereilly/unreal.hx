/**
  This file was autogenerated by UE4HaxeExternGenerator using UHT definitions. It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
  In order to add more definitions, create or edit a type with the same name/package, but with a `_Extra` suffix
**/
package unreal.landscape;

@:umodule("Landscape")
@:glueCppIncludes("LandscapeInfo.h")
@:uextern extern class ULandscapeInfo extends unreal.UObject {
  #if WITH_EDITORONLY_DATA
  public var Layers : unreal.TArray<unreal.landscape.FLandscapeInfoLayerSettings>;
  public var bIsValid : Bool;
  #end // WITH_EDITORONLY_DATA
  public var DrawScale : unreal.FVector;
  public var ComponentNumSubsections : unreal.Int32;
  public var SubsectionSizeQuads : unreal.Int32;
  public var ComponentSizeQuads : unreal.Int32;
  public var LandscapeGuid : unreal.FGuid;
  
}
