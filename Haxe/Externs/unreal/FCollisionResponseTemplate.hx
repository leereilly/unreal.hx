/**
  This file was autogenerated by UE4HaxeExternGenerator using UHT definitions. It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
  In order to add more definitions, create or edit a type with the same name/package, but with a `_Extra` suffix
**/
package unreal;


/**
  Structure for collision response templates.
**/
@:glueCppIncludes("Engine/CollisionProfile.h")
@:uextern extern class FCollisionResponseTemplate {
  @:uname('new') public static function create():PHaxeCreated<unreal.FCollisionResponseTemplate>;
  
  /**
    Help message for collision profile *
  **/
  public var bCanModify : Bool;
  
  /**
    Help message for collision profile *
  **/
  public var HelpMessage : unreal.FString;
  
  /**
    Types of objects that this physics objects will collide with.
  **/
  public var CustomResponses : unreal.TArray<unreal.FResponseChannel>;
  public var ObjectTypeName : unreal.FName;
  public var CollisionEnabled : unreal.ECollisionEnabled;
  public var Name : unreal.FName;
  
}
