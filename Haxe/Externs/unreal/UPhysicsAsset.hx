/**
  This file was autogenerated by UE4HaxeExternGenerator using UHT definitions. It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
  In order to add more definitions, create or edit a type with the same name/package, but with a `_Extra` suffix
**/
package unreal;


/**
  PhysicsAsset contains a set of rigid bodies and constraints that make up a single ragdoll.
  The asset is not limited to human ragdolls, and can be used for any physical simulation using bodies and constraints.
  A SkeletalMesh has a single PhysicsAsset, which allows for easily turning ragdoll physics on or off for many SkeletalMeshComponents
  The asset can be configured inside the Physics Asset Editor (PhAT).
  
  @see https://docs.unrealengine.com/latest/INT/Engine/Physics/PhAT/Reference/index.html
  @see USkeletalMesh
**/
@:glueCppIncludes("PhysicsEngine/PhysicsAsset.h")
@:uextern extern class UPhysicsAsset extends unreal.UObject {
  
  /**
    Array of RB_ConstraintSetup objects.
    Stores information about a joint between two bodies, such as position relative to each body, joint limits etc.
  **/
  public var ConstraintSetup : unreal.TArray<unreal.UPhysicsConstraintTemplate>;
  
  /**
    Index of bodies that are marked bConsiderForBounds
  **/
  public var BoundsBodies : unreal.TArray<unreal.Int32>;
  
  /**
    Array of BodySetup objects. Stores information about collision shape etc. for each body.
    Does not include body position - those are taken from mesh.
  **/
  public var BodySetup : unreal.TArray<unreal.UBodySetup>;
  #if WITH_EDITORONLY_DATA
  
  /**
    Default skeletal mesh to use when previewing this PhysicsAsset etc.
    Is the one that was used as the basis for creating this Asset.
  **/
  public var DefaultSkelMesh_DEPRECATED : unreal.USkeletalMesh;
  #end // WITH_EDITORONLY_DATA
  
}
