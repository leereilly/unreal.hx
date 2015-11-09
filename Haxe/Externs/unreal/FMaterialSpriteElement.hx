/**
  This file was autogenerated by UE4HaxeExternGenerator using UHT definitions. It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
  In order to add more definitions, create or edit a type with the same name/package, but with a `_Extra` suffix
**/
package unreal;

@:glueCppIncludes("Components/MaterialBillboardComponent.h")
@:uextern extern class FMaterialSpriteElement {
  @:uname('new') public static function create():PHaxeCreated<unreal.FMaterialSpriteElement>;
  
  /**
    A curve that maps distance on the X axis to the sprite size on the Y axis.
  **/
  public var DistanceToSizeCurve : unreal.UCurveFloat;
  
  /**
    The base height of the sprite, multiplied with the DistanceToSizeCurve.
  **/
  public var BaseSizeY : unreal.Float32;
  
  /**
    The base width of the sprite, multiplied with the DistanceToSizeCurve.
  **/
  public var BaseSizeX : unreal.Float32;
  
  /**
    Whether the size is defined in screen-space or world-space.
  **/
  public var bSizeIsInScreenSpace : Bool;
  
  /**
    A curve that maps distance on the X axis to the sprite opacity on the Y axis.
  **/
  public var DistanceToOpacityCurve : unreal.UCurveFloat;
  
  /**
    The material that the sprite is rendered with.
  **/
  public var Material : unreal.UMaterialInterface;
  
}
