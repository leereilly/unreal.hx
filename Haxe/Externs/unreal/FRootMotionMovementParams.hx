/**
  This file was autogenerated by UE4HaxeExternGenerator using UHT definitions. It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
  In order to add more definitions, create or edit a type with the same name/package, but with a `_Extra` suffix
**/
package unreal;


/**
  Utility struct to accumulate root motion.
**/
@:glueCppIncludes("GameFramework/Character.h")
@:uextern extern class FRootMotionMovementParams {
  @:uname('new') public static function create():PHaxeCreated<unreal.FRootMotionMovementParams>;
  public var RootMotionTransform : unreal.FTransform;
  public var BlendWeight : unreal.Float32;
  public var bHasRootMotion : Bool;
  
}
