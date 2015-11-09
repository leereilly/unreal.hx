/**
  This file was autogenerated by UE4HaxeExternGenerator using UHT definitions. It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
  In order to add more definitions, create or edit a type with the same name/package, but with a `_Extra` suffix
**/
package unreal;

@:glueCppIncludes("AI/Navigation/AvoidanceManager.h")
@:uextern extern class UAvoidanceManager extends unreal.UObject {
  
  /**
    Test against obstacles within given height difference from moving agent
  **/
  public var TestHeightDifference : unreal.Float32;
  
  /**
    Multiply the radius of all STORED avoidance objects by this value to allow a little extra room for avoidance maneuvers.
  **/
  public var ArtificialRadiusExpansion : unreal.Float32;
  
  /**
    This is how far forward in time (seconds) we extend our velocity cones and thus our prediction
  **/
  public var DeltaTimeToPredict : unreal.Float32;
  
  /**
    How long to stay on course (barring collision) after making an unobstructed move (should be > 0.0, but can be less than a full frame)
  **/
  public var LockTimeAfterClean : unreal.Float32;
  
  /**
    How long to stay on course (barring collision) after making an avoidance move
  **/
  public var LockTimeAfterAvoid : unreal.Float32;
  
  /**
    How long an avoidance UID must not be updated before the system will put it back in the pool. Actual delay is up to 150% of this value.
  **/
  public var DefaultTimeToLive : unreal.Float32;
  
}
