/**
  This file was autogenerated by UE4HaxeExternGenerator using UHT definitions. It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
  In order to add more definitions, create or edit a type with the same name/package, but with a `_Extra` suffix
**/
package unreal;


/**
  This component tries to maintain its children at a fixed distance from the parent,
  but will retract the children if there is a collision, and spring back when there is no collision.
  
  Example: Use as a 'camera boom' to keep the follow camera for a player from colliding into the world.
**/
@:glueCppIncludes("GameFramework/SpringArmComponent.h")
@:uextern extern class USpringArmComponent extends unreal.USceneComponent {
  
  /**
    Max distance the camera target may lag behind the current location. If set to zero, no max distance is enforced.
  **/
  public var CameraLagMaxDistance : unreal.Float32;
  
  /**
    Max time step used when sub-stepping camera lag.
  **/
  public var CameraLagMaxTimeStep : unreal.Float32;
  
  /**
    If bEnableCameraRotationLag is true, controls how quickly camera reaches target position. Low values are slower (more lag), high values are faster (less lag), while zero is instant (no lag).
  **/
  public var CameraRotationLagSpeed : unreal.Float32;
  
  /**
    If bEnableCameraLag is true, controls how quickly camera reaches target position. Low values are slower (more lag), high values are faster (less lag), while zero is instant (no lag).
  **/
  public var CameraLagSpeed : unreal.Float32;
  
  /**
    If true and camera location lag is enabled, draws markers at the camera target (in green) and the lagged position (in yellow).
    A line is drawn between the two locations, in green normally but in red if the distance to the lag target has been clamped (by CameraLagMaxDistance).
  **/
  public var bDrawDebugLagMarkers : Bool;
  
  /**
    If bUseCameraLagSubstepping is true, sub-step camera damping so that it handles fluctuating frame rates well (though this comes at a cost).
    @see CameraLagMaxTimeStep
  **/
  public var bUseCameraLagSubstepping : Bool;
  
  /**
    If true, camera lags behind target rotation to smooth its movement.
    @see CameraRotationLagSpeed
  **/
  public var bEnableCameraRotationLag : Bool;
  
  /**
    If true, camera lags behind target position to smooth its movement.
    @see CameraLagSpeed
  **/
  public var bEnableCameraLag : Bool;
  
  /**
    Should we inherit roll from parent component. Does nothing if using Absolute Rotation.
  **/
  public var bInheritRoll : Bool;
  
  /**
    Should we inherit yaw from parent component. Does nothing if using Absolute Rotation.
  **/
  public var bInheritYaw : Bool;
  
  /**
    Should we inherit pitch from parent component. Does nothing if using Absolute Rotation.
  **/
  public var bInheritPitch : Bool;
  
  /**
    If this component is placed on a pawn, should it use the view/control rotation of the pawn where possible?
    @see APawn::GetViewRotation()
  **/
  public var bUsePawnControlRotation : Bool;
  
  /**
    If true, do a collision test using ProbeChannel and ProbeSize to prevent camera clipping into level.
  **/
  public var bDoCollisionTest : Bool;
  
  /**
    Collision channel of the query probe (defaults to ECC_Camera)
  **/
  public var ProbeChannel : unreal.ECollisionChannel;
  
  /**
    How big should the query probe sphere be (in unreal units)
  **/
  public var ProbeSize : unreal.Float32;
  
  /**
    Offset at start of spring, applied in world space. Use this if you want a world-space offset from the parent component instead of the usual relative-space offset.
  **/
  public var TargetOffset : unreal.FVector;
  
  /**
    offset at end of spring arm; use this instead of the relative offset of the attached component to ensure the line trace works as desired
  **/
  public var SocketOffset : unreal.FVector;
  
  /**
    Natural length of the spring arm when there are no collisions
  **/
  public var TargetArmLength : unreal.Float32;
  
}
