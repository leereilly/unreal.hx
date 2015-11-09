/**
  This file was autogenerated by UE4HaxeExternGenerator using UHT definitions. It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
  In order to add more definitions, create or edit a type with the same name/package, but with a `_Extra` suffix
**/
package unreal;

@:glueCppIncludes("Engine/Level.h")
@:uextern extern class FLevelSimplificationDetails {
  @:uname('new') public static function create():PHaxeCreated<unreal.FLevelSimplificationDetails>;
  public var bGenerateLandscapeSpecularMap_DEPRECATED : Bool;
  public var bGenerateLandscapeRoughnessMap_DEPRECATED : Bool;
  public var bGenerateLandscapeMetallicMap_DEPRECATED : Bool;
  public var bGenerateLandscapeNormalMap_DEPRECATED : Bool;
  public var bGenerateMeshSpecularMap_DEPRECATED : Bool;
  public var bGenerateMeshRoughnessMap_DEPRECATED : Bool;
  public var bGenerateMeshMetallicMap_DEPRECATED : Bool;
  public var bGenerateMeshNormalMap_DEPRECATED : Bool;
  
  /**
    Whether to bake grass into landscape static mesh texture
  **/
  public var bBakeGrassToLandscape : Bool;
  
  /**
    Whether to bake foliage into landscape static mesh texture
  **/
  public var bBakeFoliageToLandscape : Bool;
  
  /**
    Landscape material simplification
  **/
  public var LandscapeMaterial : unreal.FMaterialSimplificationSettings;
  
  /**
    Landscape LOD to use for static mesh generation, when not specified 'Max LODLevel' from landscape actor will be used
  **/
  public var LandscapeExportLOD : unreal.Int32;
  public var bOverrideLandscapeExportLOD : Bool;
  
  /**
    Static mesh material simplification
  **/
  public var StaticMeshMaterial : unreal.FMaterialSimplificationSettings;
  
  /**
    Percentage of details for static mesh proxy
  **/
  public var DetailsPercentage : unreal.Float32;
  
  /**
    Whether to create separate packages for each generated asset. All in map package otherwise
  **/
  public var bCreatePackagePerAsset : Bool;
  
}
