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
  WARNING: This type was not defined as DLL export on its declaration. Because of that, its properties/methods are inaccessible
  
  
**/
@:glueCppIncludes("Animation/AnimCompress_PerTrackCompression.h")
@:noClass @:uextern extern class UAnimCompress_PerTrackCompression extends unreal.UAnimCompress_RemoveLinearKeys {
  
  /**
    How big of a perturbation should be made when probing error propagation
  **/
  public var PerturbationProbeSize : unreal.Float32;
  
  /**
    A fraction that determines how much of the total error budget can be introduced by any particular track
  **/
  public var MaxErrorPerTrackRatio : unreal.Float32;
  
  /**
    This ratio determines how much error in end effector scale can come from a given track's rotation error or scale error.
    If 1, all of it must come from rotation error, if 0.5, half can come from each, and if 0.0, all must come from scale error.
  **/
  public var ScaleErrorSourceRatio : unreal.Float32;
  
  /**
    This ratio determines how much error in end effector translation can come from a given track's rotation error or translation error.
    If 1, all of it must come from rotation error, if 0.5, half can come from each, and if 0.0, all must come from translation error.
  **/
  public var TranslationErrorSourceRatio : unreal.Float32;
  
  /**
    This ratio determines how much error in end effector rotation can come from a given track's rotation error or translation error.
    If 1, all of it must come from rotation error, if 0.5, half can come from each, and if 0.0, all must come from translation error.
  **/
  public var RotationErrorSourceRatio : unreal.Float32;
  
  /**
    If true, the adaptive error system will determine how much error to allow for each track, based on the
    error introduced in end effectors due to errors in the track.
  **/
  public var bUseAdaptiveError2 : Bool;
  
  /**
    Reduces the error tolerance the further up the tree that a key occurs
    EffectiveErrorTolerance = Max(BaseErrorTolerance / Power(ParentingDivisor, Max(Height+Bias,0) * ParentingDivisorExponent), ZeroingThreshold)
    Only has an effect bUseAdaptiveError is true
  **/
  public var ParentingDivisorExponent : unreal.Float32;
  
  /**
    Reduces the error tolerance the further up the tree that a key occurs
    EffectiveErrorTolerance = Max(BaseErrorTolerance / Power(ParentingDivisor, Max(Height+Bias,0) * ParentingDivisorExponent), ZeroingThreshold)
    Only has an effect bUseAdaptiveError is true
  **/
  public var ParentingDivisor : unreal.Float32;
  
  /**
    A bias added to the track height before using it to calculate the adaptive error
  **/
  public var TrackHeightBias : unreal.Int32;
  
  /**
    If true, uses MinEffectorDiff as the threhsold for end effectors
  **/
  public var bUseOverrideForEndEffectors : Bool;
  
  /**
    If true, adjust the error thresholds based on the 'height' within the skeleton
  **/
  public var bUseAdaptiveError : Bool;
  
  /**
    Animations with fewer keys than MinKeysForResampling will not be resampled.
  **/
  public var MinKeysForResampling : unreal.Int32;
  
  /**
    When bResampleAnimation is true, this defines the desired framerate
  **/
  public var ResampledFramerate : unreal.Float32;
  
  /**
    If true, resample the animation to ResampleFramerate frames per second
  **/
  public var bResampleAnimation : Bool;
  
  /**
    Maximum position difference to use when testing if an animation key may be removed. Lower values retain more keys, but yield less compression.
  **/
  public var MaxScaleDiffBitwise : unreal.Float32;
  
  /**
    Maximum angle difference to use when testing if an animation key may be removed. Lower values retain more keys, but yield less compression.
  **/
  public var MaxAngleDiffBitwise : unreal.Float32;
  
  /**
    Maximum position difference to use when testing if an animation key may be removed. Lower values retain more keys, but yield less compression.
  **/
  public var MaxPosDiffBitwise : unreal.Float32;
  
  /**
    Maximum threshold to use when replacing a component with zero. Lower values retain more keys, but yield less compression.
  **/
  public var MaxZeroingThreshold : unreal.Float32;
  
}
