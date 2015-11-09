/**
  This file was autogenerated by UE4HaxeExternGenerator using UHT definitions. It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
  In order to add more definitions, create or edit a type with the same name/package, but with a `_Extra` suffix
**/
package unreal;


/**
  Structure for recording float values and displaying them as an Histogram through DrawDebugFloatHistory.
**/
@:glueCppIncludes("Engine.h")
@:uextern extern class FDebugFloatHistory {
  @:uname('new') public static function create():PHaxeCreated<unreal.FDebugFloatHistory>;
  
  /**
    Auto adjust Min/Max as new values are recorded?
  **/
  public var bAutoAdjustMinMax : Bool;
  
  /**
    Max value to record.
  **/
  public var MaxValue : unreal.Float32;
  
  /**
    Min value to record.
  **/
  public var MinValue : unreal.Float32;
  
  /**
    Max Samples to record.
  **/
  public var MaxSamples : unreal.Float32;
  
}
