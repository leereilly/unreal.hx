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

@:glueCppIncludes("Matinee/InterpTrackInstMove.h")
@:uextern extern class UInterpTrackInstMove extends unreal.UInterpTrackInst {
  
  /**
    Saved rotation. Used in editor for resetting when quitting Matinee.
  **/
  public var ResetRotation : unreal.FRotator;
  
  /**
    Saved position. Used in editor for resetting when quitting Matinee.
  **/
  public var ResetLocation : unreal.FVector;
  
}