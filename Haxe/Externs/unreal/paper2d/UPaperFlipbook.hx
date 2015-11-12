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
package unreal.paper2d;


/**
  Contains an animation sequence of sprite frames
**/
@:umodule("Paper2D")
@:glueCppIncludes("PaperFlipbook.h")
@:uextern extern class UPaperFlipbook extends unreal.UObject {
  
  /**
    Collision source
  **/
  private var CollisionSource : unreal.paper2d.EFlipbookCollisionMode;
  
  /**
    The material to use on a flipbook player instance if not overridden
  **/
  private var DefaultMaterial : unreal.UMaterialInterface;
  
  /**
    The nominal frame rate to play this flipbook animation back at
  **/
  private var FramesPerSecond : unreal.Float32;
  
  /**
    Returns the total number of frames
  **/
  @:thisConst @:final public function GetNumFrames() : unreal.Int32;
  
  /**
    Returns the total duration in seconds
  **/
  @:thisConst @:final public function GetTotalDuration() : unreal.Float32;
  
  /**
    Returns the keyframe index that covers the specified time (in seconds), or INDEX_NONE if none exists.
    When bClampToEnds is true, it will choose the first or last keyframe if the time is out of range.
  **/
  @:thisConst @:final public function GetKeyFrameIndexAtTime(Time : unreal.Float32, bClampToEnds : Bool) : unreal.Int32;
  
  /**
    Returns the sprite at the specified time (in seconds), or nullptr if none exists.
    When bClampToEnds is true, it will choose the first or last sprite if the time is out of range.
  **/
  @:thisConst @:final public function GetSpriteAtTime(Time : unreal.Float32, bClampToEnds : Bool) : unreal.paper2d.UPaperSprite;
  
  /**
    Returns the sprite at the specified keyframe index, or nullptr if none exists
  **/
  @:thisConst @:final public function GetSpriteAtFrame(FrameIndex : unreal.Int32) : unreal.paper2d.UPaperSprite;
  
  /**
    Returns the number of key frames
  **/
  @:thisConst @:final public function GetNumKeyFrames() : unreal.Int32;
  
  /**
    Is the specified Index within the valid range of key frames?
  **/
  @:thisConst @:final public function IsValidKeyFrameIndex(Index : unreal.Int32) : Bool;
  
}
