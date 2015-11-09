/**
  This file was autogenerated by UE4HaxeExternGenerator using UHT definitions. It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
  In order to add more definitions, create or edit a type with the same name/package, but with a `_Extra` suffix
**/
package unreal;

@:glueCppIncludes("Sound/AudioVolume.h")
@:uextern extern class AAudioVolume extends unreal.AVolume {
  
  /**
    Next volume in linked listed, sorted by priority in descending order.
  **/
  public var NextLowerPriorityVolume : unreal.AAudioVolume;
  
  /**
    Interior settings used for this volume
  **/
  public var AmbientZoneSettings : unreal.FInteriorSettings;
  
  /**
    Reverb settings to use for this volume.
  **/
  public var Settings : unreal.FReverbSettings;
  
  /**
    whether this volume is currently enabled and able to affect sounds
  **/
  public var bEnabled : Bool;
  
  /**
    Priority of this volume. In the case of overlapping volumes the one with the highest priority
    is chosen. The order is undefined if two or more overlapping volumes have the same priority.
  **/
  public var Priority : unreal.Float32;
  
}
