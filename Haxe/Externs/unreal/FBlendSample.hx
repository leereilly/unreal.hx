/**
  This file was autogenerated by UE4HaxeExternGenerator using UHT definitions. It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
  In order to add more definitions, create or edit a type with the same name/package, but with a `_Extra` suffix
**/
package unreal;


/**
  Sample data
**/
@:glueCppIncludes("Animation/BlendSpaceBase.h")
@:uextern extern class FBlendSample {
  @:uname('new') public static function create():PHaxeCreated<unreal.FBlendSample>;
  
  /**
    blend 0->x, blend 1->y, blend 2->z
  **/
  public var SampleValue : unreal.FVector;
  public var Animation : unreal.UAnimSequence;
  
}
