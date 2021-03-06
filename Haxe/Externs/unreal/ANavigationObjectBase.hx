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
package unreal;

@:glueCppIncludes("Engine/NavigationObjectBase.h")
@:uextern extern class ANavigationObjectBase extends unreal.AActor implements unreal.INavAgentInterface {
  
  /**
    True if this nav point was spawned to be a PIE player start.
  **/
  public var bIsPIEPlayerStart : Bool;
  public var BadSprite : unreal.UBillboardComponent;
  public var GoodSprite : unreal.UBillboardComponent;
  public var CapsuleComponent : unreal.UCapsuleComponent;
  // NavAgentInterface interface implementation
  
}
