/**
  This file was autogenerated by UE4HaxeExternGenerator using UHT definitions. It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
  In order to add more definitions, create or edit a type with the same name/package, but with a `_Extra` suffix
**/
package unreal;


/**
  Structure storing information about one float interpolation track
**/
@:glueCppIncludes("Engine/TimelineTemplate.h")
@:uextern extern class FTTFloatTrack extends unreal.FTTTrackBase {
  @:uname('new') public static function create():PHaxeCreated<unreal.FTTFloatTrack>;
  
  /**
    Curve object used to define float value over time
  **/
  public var CurveFloat : unreal.UCurveFloat;
  
}
