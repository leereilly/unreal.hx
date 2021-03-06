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
package unreal.slatecore;


/**
  A representation of a font in Slate.
**/
@:umodule("SlateCore")
@:glueCppIncludes("Framework/Styling/EditableTextBoxWidgetStyle.h")
@:uextern extern class FSlateFontInfo {
  
  /**
    The size of the font
  **/
  public var Size : unreal.Int32;
  
  /**
    The name of the font to use from the default typeface (None will use the first entry)
  **/
  public var TypefaceFontName : unreal.FName;
  
  /**
    The material to use when rendering this font
  **/
  public var FontMaterial : unreal.UObject;
  
  /**
    The font object (valid when used from UMG or a Slate widget style asset)
  **/
  public var FontObject : unreal.UObject;
  
}
