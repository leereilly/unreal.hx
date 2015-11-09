/**
  This file was autogenerated by UE4HaxeExternGenerator using UHT definitions. It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
  In order to add more definitions, create or edit a type with the same name/package, but with a `_Extra` suffix
**/
package unreal;


/**
  Keyframe scale data for one track.  Scale(i) occurs at Time(i).  Rot.Num() always equals Time.Num().
**/
@:glueCppIncludes("Animation/AnimSequence.h")
@:uextern extern class FScaleTrack {
  @:uname('new') public static function create():PHaxeCreated<unreal.FScaleTrack>;
  public var Times : unreal.TArray<unreal.Float32>;
  public var ScaleKeys : unreal.TArray<unreal.FVector>;
  
}
