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
package unreal.umg;


/**
  The progress bar widget is a simple bar that fills up that can be restyled to fit any number of uses.
  
  ● No Children
**/
@:umodule("UMG")
@:glueCppIncludes("Components/ProgressBar.h")
@:uextern extern class UProgressBar extends unreal.umg.UWidget {
  
  /**
    Fill Color and Opacity
  **/
  public var FillColorAndOpacity : unreal.FLinearColor;
  public var bIsMarquee : Bool;
  
  /**
    Defines if this progress bar fills Left to right or right to left
  **/
  public var BarFillType : unreal.slate.EProgressBarFillType;
  
  /**
    Used to determine the fill position of the progress bar ranging 0..1
  **/
  public var Percent : unreal.Float32;
  
  /**
    The brush to use as the marquee image
  **/
  public var MarqueeImage_DEPRECATED : unreal.USlateBrushAsset;
  
  /**
    The brush to use as the fill image
  **/
  public var FillImage_DEPRECATED : unreal.USlateBrushAsset;
  
  /**
    The brush to use as the background of the progress bar
  **/
  public var BackgroundImage_DEPRECATED : unreal.USlateBrushAsset;
  
  /**
    Style used for the progress bar
  **/
  public var Style_DEPRECATED : unreal.slatecore.USlateWidgetStyleAsset;
  
  /**
    The progress bar style
  **/
  public var WidgetStyle : unreal.slatecore.FProgressBarStyle;
  
  /**
    Sets the current value of the ProgressBar.
  **/
  @:final public function SetPercent(InPercent : unreal.Float32) : Void;
  
  /**
    Sets the fill color of the progress bar.
  **/
  @:final public function SetFillColorAndOpacity(InColor : unreal.FLinearColor) : Void;
  
  /**
    Sets the progress bar to show as a marquee.
  **/
  @:final public function SetIsMarquee(InbIsMarquee : Bool) : Void;
  
}