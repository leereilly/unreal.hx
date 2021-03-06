/**
   * 
   * WARNING! This file was autogenerated by: 
   *  _   _ _____     ___   _   _ __   __ 
   * | | | |  ___|   /   | | | | |\ \ / / 
   * | | | | |__    / /| | | |_| | \ V /  
   * | | | |  __|  / /_| | |  _  | /   \  
   * | |_| | |___  \___  | | | | |/ /^\ \ 
   *  \___/\____/      |_/ \_| |_/\/   \/ 
   * 
   * This file was autogenerated by UE4HaxeExternGenerator using UHT definitions. It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
   * In order to add more definitions, create or edit a type with the same name/package, but with an `_Extra` suffix
**/
package unreal;


/**
  ShapeComponent is a PrimitiveComponent that is represented by a simple geometrical shape (sphere, capsule, box, etc).
**/
@:glueCppIncludes("Components/ShapeComponent.h")
@:uextern extern class UShapeComponent extends unreal.UPrimitiveComponent {
  
  /**
    Navigation area type (empty = default obstacle)
  **/
  public var AreaClass : unreal.TSubclassOf<unreal.UNavArea>;
  
  /**
    If set, shape will be exported for navigation as dynamic modifier instead of using regular collision data
  **/
  public var bDynamicObstacle : Bool;
  
  /**
    If true it allows Collision when placing even if collision is not enabled
  **/
  public var bShouldCollideWhenPlacing : Bool;
  
  /**
    Only show this component if the actor is selected
  **/
  public var bDrawOnlyIfSelected : Bool;
  
  /**
    Description of collision
  **/
  public var ShapeBodySetup : unreal.UBodySetup;
  
  /**
    Color used to draw the shape.
  **/
  public var ShapeColor : unreal.FColor;
  
}
