/**
  This file was autogenerated by UE4HaxeExternGenerator using UHT definitions. It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
  In order to add more definitions, create or edit a type with the same name/package, but with a `_Extra` suffix
**/
package unreal;

@:glueCppIncludes("AI/Navigation/NavLinkProxy.h")
@:uextern extern class ANavLinkProxy extends unreal.AActor implements unreal.INavLinkHostInterface implements unreal.INavRelevantInterface {
  #if WITH_EDITORONLY_DATA
  public var SpriteComponent : unreal.UBillboardComponent;
  public var EdRenderComp : unreal.UNavLinkRenderingComponent;
  #end // WITH_EDITORONLY_DATA
  
  /**
    Smart link: toggle relevancy
  **/
  public var bSmartLinkIsRelevant : Bool;
  public var SmartLinkComp : unreal.UNavLinkCustomComponent;
  
  /**
    Navigation links (segment to segment) added to navigation data
         @todo hidden from use until we fix segment links. Not really working now
  **/
  public var SegmentLinks : unreal.TArray<unreal.FNavigationSegmentLink>;
  
  /**
    Navigation links (point to point) added to navigation data
  **/
  public var PointLinks : unreal.TArray<unreal.FNavigationLink>;
  
}
