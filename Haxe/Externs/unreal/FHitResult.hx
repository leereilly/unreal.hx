/**
  This file was autogenerated by UE4HaxeExternGenerator using UHT definitions. It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
  In order to add more definitions, create or edit a type with the same name/package, but with a `_Extra` suffix
**/
package unreal;


/**
  Structure containing information about one hit of a trace, such as point of impact and surface normal at that point.
**/
@:glueCppIncludes("GameFramework/CharacterMovementComponent.h")
@:uextern extern class FHitResult {
  @:uname('new') public static function create():PHaxeCreated<unreal.FHitResult>;
  
  /**
    Face index we hit (for complex hits with triangle meshes).
  **/
  public var FaceIndex : unreal.Int32;
  
  /**
    Name of bone we hit (for skeletal meshes).
  **/
  public var BoneName : unreal.FName;
  
  /**
    Extra data about item that was hit (hit primitive specific).
  **/
  public var Item : unreal.Int32;
  
  /**
    If this test started in penetration (bStartPenetrating is true) and a depenetration vector can be computed,
    this value is the distance along Normal that will result in moving out of penetration.
    If the distance cannot be computed, this distance will be zero.
  **/
  public var PenetrationDepth : unreal.Float32;
  
  /**
    End location of the trace; this is NOT where the impact occurred (if any), but the furthest point in the attempted sweep.
    For example if a sphere is swept against the world, this would be the center of the sphere if there was no blocking hit.
  **/
  public var TraceEnd : unreal.FVector_NetQuantize;
  
  /**
    Start location of the trace.
    For example if a sphere is swept against the world, this is the starting location of the center of the sphere.
  **/
  public var TraceStart : unreal.FVector_NetQuantize;
  
  /**
    Normal of the hit in world space, for the object that was hit by the sweep, if any.
    For example if a box hits a flat plane, this is a normalized vector pointing out from the plane.
    In the case of impact with a corner or edge of a surface, usually the "most opposing" normal (opposed to the query direction) is chosen.
  **/
  public var ImpactNormal : unreal.FVector_NetQuantizeNormal;
  
  /**
    Normal of the hit in world space, for the object that was swept. Equal to ImpactNormal for line tests.
    This is computed for capsules and spheres, otherwise it will be the same as ImpactNormal.
    Example: for a sphere trace test, this is a normalized vector pointing in towards the center of the sphere at the point of impact.
  **/
  public var Normal : unreal.FVector_NetQuantizeNormal;
  
  /**
    Location in world space of the actual contact of the trace shape (box, sphere, ray, etc) with the impacted object.
    Example: for a sphere trace test, this is the point where the surface of the sphere touches the other object.
  **/
  public var ImpactPoint : unreal.FVector_NetQuantize;
  
  /**
    The location in world space where the moving shape would end up against the impacted object, if there is a hit. Equal to the point of impact for line tests.
    Example: for a sphere trace test, this is the point where the center of the sphere would be located when it touched the other object.
    For swept movement (but not queries) this may not equal the final location of the shape since hits are pulled back slightly to prevent precision issues from overlapping another surface.
  **/
  public var Location : unreal.FVector_NetQuantize;
  
  /**
    The distance from the TraceStart to the ImpactPoint in world space. This value is 0 if there was an initial overlap (trace started inside another colliding object).
  **/
  public var Distance : unreal.Float32;
  
  /**
    'Time' of impact along trace direction (ranging from 0.0 to 1.0) if there is a hit, indicating time between TraceStart and TraceEnd.
    For swept movement (but not queries) this may be pulled back slightly from the actual time of impact, to prevent precision problems with adjacent geometry.
  **/
  public var Time : unreal.Float32;
  
  /**
    Whether the trace started in penetration, i.e. with an initial blocking overlap.
    In the case of penetration, if PenetrationDepth > 0.f, then it will represent the distance along the Normal vector that will result in
    minimal contact between the swept shape and the object that was hit. In this case, ImpactNormal will be the normal opposed to movement at that location
    (ie, Normal may not equal ImpactNormal).
  **/
  public var bStartPenetrating : Bool;
  
  /**
    Indicates if this hit was a result of blocking collision. If false, there was no hit or it was an overlap/touch instead.
  **/
  public var bBlockingHit : Bool;
  
}
