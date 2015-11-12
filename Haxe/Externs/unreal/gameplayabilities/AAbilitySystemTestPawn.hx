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
package unreal.gameplayabilities;

@:umodule("GameplayAbilities")
@:glueCppIncludes("AbilitySystemTestPawn.h")
@:uextern extern class AAbilitySystemTestPawn extends unreal.ADefaultPawn implements unreal.gameplayabilities.IGameplayCueInterface implements unreal.gameplayabilities.IAbilitySystemInterface {
  public var AbilitySystemComponent : unreal.gameplayabilities.UAbilitySystemComponent;
  // GameplayCueInterface interface implementation
  
  /**
    Call from a Cue handler event to continue checking for additional, more generic handlers. Called from the ability system blueprint library
  **/
  public function ForwardGameplayCueToParent() : Void;
  // AbilitySystemInterface interface implementation
  
}
