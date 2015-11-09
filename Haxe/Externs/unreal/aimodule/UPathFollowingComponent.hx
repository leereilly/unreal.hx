/**
  This file was autogenerated by UE4HaxeExternGenerator using UHT definitions. It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
  In order to add more definitions, create or edit a type with the same name/package, but with a `_Extra` suffix
**/
package unreal.aimodule;

@:umodule("AIModule")
@:glueCppIncludes("Navigation/PathFollowingComponent.h")
@:uextern extern class UPathFollowingComponent extends unreal.UActorComponent implements unreal.aimodule.IAIResourceInterface {
  
  /**
    navigation data for agent described in movement component
  **/
  private var MyNavData : unreal.ANavigationData;
  
  /**
    associated movement component
  **/
  private var MovementComp : unreal.UNavMovementComponent;
  
}
