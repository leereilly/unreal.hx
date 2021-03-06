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
package unreal.aimodule;


/**
  Cooldown decorator node.
  A decorator node that bases its condition on whether a cooldown timer based on a gameplay tag has expired.
**/
@:umodule("AIModule")
@:glueCppIncludes("BehaviorTree/Decorators/BTDecorator_TagCooldown.h")
@:uextern extern class UBTDecorator_TagCooldown extends unreal.aimodule.UBTDecorator {
  
  /**
    Whether or not we are adding/setting to the cooldown tag's value when the decorator deactivates.
  **/
  public var bActivatesCooldown : Bool;
  
  /**
    True if we are adding to any existing duration, false if we are setting the duration (potentially invalidating an existing end time).
  **/
  public var bAddToExistingDuration : Bool;
  
  /**
    Value we will add or set to the Cooldown tag when this node is deactivated.
  **/
  public var CooldownDuration : unreal.Float32;
  
  /**
    Gameplay tag that will be used for the cooldown.
  **/
  public var CooldownTag : unreal.gameplaytags.FGameplayTag;
  
}
