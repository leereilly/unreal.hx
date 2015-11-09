/**
  This file was autogenerated by UE4HaxeExternGenerator using UHT definitions. It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
  In order to add more definitions, create or edit a type with the same name/package, but with a `_Extra` suffix
**/
package unreal;

@:glueCppIncludes("Distributions/DistributionVectorConstant.h")
@:uextern extern class UDistributionVectorConstant extends unreal.UDistributionVector {
  public var LockedAxes : unreal.EDistributionVectorLockFlags;
  
  /**
    If true, X == Y == Z ie. only one degree of freedom. If false, each axis is picked independently.
  **/
  public var bLockAxes : Bool;
  
  /**
    This FVector will be returned for all input times.
  **/
  public var Constant : unreal.FVector;
  
}
