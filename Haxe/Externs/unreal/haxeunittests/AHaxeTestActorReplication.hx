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
package unreal.haxeunittests;


/**
  WARNING! This file was autogenerated by:
   _   _ _____     ___   _   _ __   __
  | | | |  ___|   /   | | | | |\ \ / /
  | | | | |__    / /| | | |_| | \ V /
  | | | |  __|  / /_| | |  _  | /   \
  | |_| | |___  \___  | | | | |/ /^\ \
   \___/\____/      |_/ \_| |_/\/   \/
**/
@:umodule("HaxeUnitTests")
@:glueCppIncludes("HaxeTestActorReplication.h")
@:uextern extern class AHaxeTestActorReplication extends unreal.AActor {
  private function onRep_replicatedPropA() : Void;
  private function onRep_replicatedPropB(i : unreal.Int32) : Void;
  public var replicatedPropC : unreal.Int32;
  public var replicatedPropB : unreal.Int32;
  public var replicatedPropA : unreal.Int32;
  
}
