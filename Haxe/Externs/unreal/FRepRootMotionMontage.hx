/**
  This file was autogenerated by UE4HaxeExternGenerator using UHT definitions. It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
  In order to add more definitions, create or edit a type with the same name/package, but with a `_Extra` suffix
**/
package unreal;


/**
  Replicated data when playing a root motion montage.
**/
@:glueCppIncludes("GameFramework/Character.h")
@:uextern extern class FRepRootMotionMontage {
  @:uname('new') public static function create():PHaxeCreated<unreal.FRepRootMotionMontage>;
  
  /**
    Whether rotation is relative or absolute.
  **/
  public var bRelativeRotation : Bool;
  
  /**
    Additional replicated flag, if MovementBase can't be resolved on the client. So we don't use wrong data.
  **/
  public var bRelativePosition : Bool;
  
  /**
    Bone on the MovementBase, if a skeletal mesh.
  **/
  public var MovementBaseBoneName : unreal.FName;
  
  /**
    Movement Relative to Base
  **/
  public var MovementBase : unreal.UPrimitiveComponent;
  
  /**
    Rotation
  **/
  public var Rotation : unreal.FRotator;
  
  /**
    Location
  **/
  public var Location : unreal.FVector_NetQuantize10;
  
  /**
    Track position of Montage
  **/
  public var Position : unreal.Float32;
  
  /**
    AnimMontage providing Root Motion
  **/
  public var AnimMontage : unreal.UAnimMontage;
  
}
