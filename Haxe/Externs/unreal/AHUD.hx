/**
  This file was autogenerated by UE4HaxeExternGenerator using UHT definitions. It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
  In order to add more definitions, create or edit a type with the same name/package, but with a `_Extra` suffix
**/
package unreal;


/**
  Base class of the heads-up display. This has a canvas and a debug canvas on which primitives can be drawn.
  It also contains a list of simple hit boxes that can be used for simple item click detection.
  A method of rendering debug text is also included.
  Provides some simple methods for rendering text, textures, rectangles and materials which can also be accessed from blueprints.
  @see UCanvas
  @see FHUDHitBox
  @see FDebugTextInfo
**/
@:glueCppIncludes("GameFramework/HUD.h")
@:uextern extern class AHUD extends unreal.AActor {
  private var DebugTextList : unreal.TArray<unreal.FDebugTextInfo>;
  
  /**
    'Foreground' debug canvas, will draw in front of Slate UI.
  **/
  private var DebugCanvas : unreal.UCanvas;
  
  /**
    Canvas to Draw HUD on.  Only valid during PostRender() event.
  **/
  private var Canvas : unreal.UCanvas;
  
  /**
    Array of names specifying what subsets of debug info to display for viewtarget actor.
  **/
  public var ToggledDebugCategories : unreal.TArray<unreal.FName>;
  
  /**
    Array of names specifying what debug info to display for viewtarget actor.
  **/
  public var DebugDisplay : unreal.TArray<unreal.FName>;
  
  /**
    Time since last HUD render.
  **/
  public var RenderDelta : unreal.Float32;
  
  /**
    Used to calculate delta time between HUD rendering.
  **/
  public var LastHUDRenderTime : unreal.Float32;
  
  /**
    Holds a list of Actors that need PostRender() calls.
  **/
  public var PostRenderedActors : unreal.TArray<unreal.AActor>;
  
  /**
    Put shadow on debug strings
  **/
  public var bEnableDebugTextShadow : Bool;
  
  /**
    If true, render actor overlays.
  **/
  public var bShowOverlays : Bool;
  
  /**
    If true, show hitbox debugging info.
  **/
  public var bShowHitBoxDebugInfo : Bool;
  
  /**
    If true, current ViewTarget shows debug information using its DisplayDebug().
  **/
  public var bShowDebugInfo : Bool;
  
  /**
    Whether or not the HUD should be drawn.
  **/
  public var bShowHUD : Bool;
  
  /**
    Tells whether the game was paused due to lost focus
  **/
  public var bLostFocusPaused : Bool;
  
  /**
    PlayerController which owns this HUD.
  **/
  public var PlayerOwner : unreal.APlayerController;
  public var RedColor : unreal.FColor;
  public var GreenColor : unreal.FColor;
  
  /**
    Pre-defined FColors for convenience.
  **/
  public var WhiteColor : unreal.FColor;
  
}
