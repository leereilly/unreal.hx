/**
  This file was autogenerated by UE4HaxeExternGenerator using UHT definitions. It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
  In order to add more definitions, create or edit a type with the same name/package, but with a `_Extra` suffix
**/
package unreal;


/**
  Struct used to specify the property name of the component to constrain
**/
@:glueCppIncludes("PhysicsEngine/PhysicsConstraintComponent.h")
@:uextern extern class FConstrainComponentPropName {
  @:uname('new') public static function create():PHaxeCreated<unreal.FConstrainComponentPropName>;
  
  /**
    Name of property
  **/
  public var ComponentName : unreal.FName;
  
}
