/**
  This file was autogenerated by UE4HaxeExternGenerator using UHT definitions. It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
  In order to add more definitions, create or edit a type with the same name/package, but with a `_Extra` suffix
**/
package unreal;


/**
  ProjectileMovementComponent updates the position of another component during its tick.
  
  Behavior such as bouncing after impacts and homing toward a target are supported.
  
  Normally the root component of the owning actor is moved, however another component may be selected (see SetUpdatedComponent()).
  If the updated component is simulating physics, only the initial launch parameters (when initial velocity is non-zero)
  will affect the projectile, and the physics sim will take over from there.
  
  @see UMovementComponent
**/
@:glueCppIncludes("GameFramework/ProjectileMovementComponent.h")
@:uextern extern class UProjectileMovementComponent extends unreal.UMovementComponent {
  
  /**
    Max number of iterations used for each discrete simulation step.
    Increasing this value can address issues with fast-moving objects or complex collision scenarios, at the cost of performance.
    
    WARNING: if (MaxSimulationTimeStep * MaxSimulationIterations) is too low for the min framerate, the last simulation step may exceed MaxSimulationTimeStep to complete the simulation.
    @see MaxSimulationTimeStep, bForceSubStepping
  **/
  public var MaxSimulationIterations : unreal.Int32;
  
  /**
    Max time delta for each discrete simulation step.
    Lowering this value can address issues with fast-moving objects or complex collision scenarios, at the cost of performance.
    
    WARNING: if (MaxSimulationTimeStep * MaxSimulationIterations) is too low for the min framerate, the last simulation step may exceed MaxSimulationTimeStep to complete the simulation.
    @see MaxSimulationIterations, bForceSubStepping
  **/
  public var MaxSimulationTimeStep : unreal.Float32;
  
  /**
    The magnitude of our acceleration towards the homing target. Overall velocity magnitude will still be limited by MaxSpeed.
  **/
  public var HomingAccelerationMagnitude : unreal.Float32;
  
  /**
    If velocity is below this threshold after a bounce, stops simulating and triggers the OnProjectileStop event.
    Ignored if bShouldBounce is false, in which case the projectile stops simulating on the first impact.
    @see StopSimulating(), OnProjectileStop
  **/
  public var BounceVelocityStopSimulatingThreshold : unreal.Float32;
  
  /**
    Coefficient of friction, affecting the resistance to sliding along a surface.
    Normal range is [0,1] : 0.0 = no friction, 1.0+ = very high friction.
    Also affects the percentage of velocity maintained after the bounce in the direction tangent to the normal of impact.
    Ignored if bShouldBounce is false.
    @see bBounceAngleAffectsFriction
  **/
  public var Friction : unreal.Float32;
  
  /**
    Percentage of velocity maintained after the bounce in the direction of the normal of impact (coefficient of restitution).
    1.0 = no velocity lost, 0.0 = no bounce. Ignored if bShouldBounce is false.
  **/
  public var Bounciness : unreal.Float32;
  
  /**
    Buoyancy of UpdatedComponent in fluid. 0.0=sinks as fast as in air, 1.0=neutral buoyancy
  **/
  public var Buoyancy : unreal.Float32;
  
  /**
    Custom gravity scale for this projectile. Set to 0 for no gravity.
  **/
  public var ProjectileGravityScale : unreal.Float32;
  
  /**
    Saved HitResult Normal from previous simulation step that resulted in an impact. If PreviousHitTime is 1.0, then the hit was not in the last step.
  **/
  public var PreviousHitNormal : unreal.FVector;
  
  /**
    Saved HitResult Time (0 to 1) from previous simulation step. Equal to 1.0 when there was no impact.
  **/
  public var PreviousHitTime : unreal.Float32;
  
  /**
    If true, projectile is sliding / rolling along a surface.
  **/
  public var bIsSliding : Bool;
  
  /**
    Controls the effects of friction on velocity parallel to the impact surface when bouncing.
    If true, friction will be modified based on the angle of impact, making friction higher for perpendicular impacts and lower for glancing impacts.
    If false, a bounce will retain a proportion of tangential velocity equal to (1.0 - Friction), acting as a "horizontal restitution".
  **/
  public var bBounceAngleAffectsFriction : Bool;
  
  /**
    If true, we will accelerate toward our homing target. HomingTargetComponent must be set after the projectile is spawned.
    @see HomingTargetComponent, HomingAccelerationMagnitude
  **/
  public var bIsHomingProjectile : Bool;
  
  /**
    If true, forces sub-stepping to break up movement into discrete smaller steps to improve accuracy of the trajectory.
    Objects that move in a straight line typically do *not* need to set this, as movement always uses continuous collision detection (sweeps) so collision is not missed.
    Sub-stepping is automatically enabled when under the effects of gravity or when homing towards a target.
    @see MaxSimulationTimeStep, MaxSimulationIterations
  **/
  public var bForceSubStepping : Bool;
  
  /**
    If true, the initial Velocity is interpreted as being in local space upon startup.
    @see SetVelocityInLocalSpace()
  **/
  public var bInitialVelocityInLocalSpace : Bool;
  
  /**
    If true, simple bounces will be simulated. Set this to false to stop simulating on contact.
  **/
  public var bShouldBounce : Bool;
  
  /**
    If true, this projectile will have its rotation updated each frame to match the direction of its velocity.
  **/
  public var bRotationFollowsVelocity : Bool;
  
  /**
    Limit on speed of projectile (0 means no limit).
  **/
  public var MaxSpeed : unreal.Float32;
  
  /**
    Initial speed of projectile. If greater than zero, this will override the initial Velocity value and instead treat Velocity as a direction.
  **/
  public var InitialSpeed : unreal.Float32;
  
}
