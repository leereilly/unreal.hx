/**
  This file was autogenerated by UE4HaxeExternGenerator using UHT definitions. It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
  In order to add more definitions, create or edit a type with the same name/package, but with a `_Extra` suffix
**/
package unreal;


/**
  Source model from which a renderable static mesh is built.
**/
@:glueCppIncludes("Engine/StaticMesh.h")
@:uextern extern class FStaticMeshSourceModel {
  @:uname('new') public static function create():PHaxeCreated<unreal.FStaticMeshSourceModel>;
  
  /**
    ScreenSize to display this LOD
  **/
  public var ScreenSize : unreal.Float32;
  public var LODDistance_DEPRECATED : unreal.Float32;
  
  /**
    Reduction settings to apply when building render data.
  **/
  public var ReductionSettings : unreal.FMeshReductionSettings;
  
  /**
    Settings applied when building the mesh.
  **/
  public var BuildSettings : unreal.FMeshBuildSettings;
  
}
