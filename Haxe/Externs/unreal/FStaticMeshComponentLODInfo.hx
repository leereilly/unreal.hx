/**
  This file was autogenerated by UE4HaxeExternGenerator using UHT definitions. It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
  In order to add more definitions, create or edit a type with the same name/package, but with a `_Extra` suffix
**/
package unreal;

@:glueCppIncludes("Components/StaticMeshComponent.h")
@:uextern extern class FStaticMeshComponentLODInfo {
  @:uname('new') public static function create():PHaxeCreated<unreal.FStaticMeshComponentLODInfo>;
  
  /**
    Vertex data cached at the time this LOD was painted, if any
  **/
  public var PaintedVertices : unreal.TArray<unreal.FPaintedVertex>;
  
}
