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
package unreal.onlinesubsystemutils;

@:umodule("OnlineSubsystemUtils")
@:glueCppIncludes("ShowLoginUICallbackProxy.h")
@:uextern extern class UShowLoginUICallbackProxy extends unreal.UBlueprintAsyncActionBase {
  
  /**
    Shows the login UI for the currently active online subsystem, if the subsystem supports a login UI.
  **/
  static public function ShowExternalLoginUI(WorldContextObject : unreal.UObject, InPlayerController : unreal.APlayerController) : unreal.onlinesubsystemutils.UShowLoginUICallbackProxy;
  
}