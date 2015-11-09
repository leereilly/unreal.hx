/**
  This file was autogenerated by UE4HaxeExternGenerator using UHT definitions. It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
  In order to add more definitions, create or edit a type with the same name/package, but with a `_Extra` suffix
**/
package unreal;

@:glueCppIncludes("Engine/StaticMesh.h")
@:uextern extern class FAssetEditorOrbitCameraPosition {
  @:uname('new') public static function create():PHaxeCreated<unreal.FAssetEditorOrbitCameraPosition>;
  
  /**
    The rotation to apply around the orbit point
  **/
  public var CamOrbitRotation : unreal.FRotator;
  
  /**
    The distance of the camera from the orbit point
  **/
  public var CamOrbitZoom : unreal.FVector;
  
  /**
    The position to orbit the camera around
  **/
  public var CamOrbitPoint : unreal.FVector;
  
  /**
    Whether or not this has been set to a valid value
  **/
  public var bIsSet : Bool;
  
}
