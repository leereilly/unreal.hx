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
package unreal.animgraphruntime;


/**
  Simple controller that make a bone to look at the point or another bone
**/
@:umodule("AnimGraphRuntime")
@:glueCppIncludes("AnimGraphNode_LookAt.h")
@:uextern extern class FAnimNode_LookAt extends unreal.animgraphruntime.FAnimNode_SkeletalControlBase {
  public var bEnableDebug : Bool;
  public var InterpolationTriggerThreashold : unreal.Float32;
  public var InterpolationTime : unreal.Float32;
  public var InterpolationType : unreal.animgraphruntime.EInterpolationBlend;
  
  /**
    Look at Clamp value in degree - if you're look at axis is Z, only X, Y degree of clamp will be used
  **/
  public var LookAtClamp : unreal.Float32;
  
  /**
    Look up axis in local space
  **/
  public var LookUpAxis : unreal.animgraphruntime.EAxisOption;
  
  /**
    Whether or not to use Look up axis
  **/
  public var bUseLookUpAxis : Bool;
  
  /**
    Look at axis, which axis to align to look at point
  **/
  public var LookAtAxis : unreal.animgraphruntime.EAxisOption;
  
  /**
    Target Location in world space if LookAtBone is empty
  **/
  public var LookAtLocation : unreal.FVector;
  
}
