/**
  This file was autogenerated by UE4HaxeExternGenerator using UHT definitions. It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
  In order to add more definitions, create or edit a type with the same name/package, but with a `_Extra` suffix
**/
package unreal.editor;

@:umodule("UnrealEd")
@:glueCppIncludes("Builders/CylinderBuilder.h")
@:uextern extern class UCylinderBuilder extends unreal.editor.UEditorBrushBuilder {
  
  /**
    Whether this is a hollow or solid cylinder
  **/
  public var Hollow : Bool;
  
  /**
    Whether to align the brush to a face
  **/
  public var AlignToSide : Bool;
  public var GroupName : unreal.FName;
  
  /**
    How many sides this cylinder should have
  **/
  public var Sides : unreal.Int32;
  
  /**
    Radius of inner cylinder (when hollow)
  **/
  public var InnerRadius : unreal.Float32;
  
  /**
    Radius of cylinder
  **/
  public var OuterRadius : unreal.Float32;
  
  /**
    Distance from base to tip of cylinder
  **/
  public var Z : unreal.Float32;
  
}
