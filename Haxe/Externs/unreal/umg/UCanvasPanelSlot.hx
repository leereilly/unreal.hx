/**
  This file was autogenerated by UE4HaxeExternGenerator using UHT definitions. It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
  In order to add more definitions, create or edit a type with the same name/package, but with a `_Extra` suffix
**/
package unreal.umg;

@:umodule("UMG")
@:glueCppIncludes("Components/CanvasPanelSlot.h")
@:uextern extern class UCanvasPanelSlot extends unreal.umg.UPanelSlot {
  
  /**
    The order priority this widget is rendered in.  Higher values are rendered last (and so they will appear to be on top).
  **/
  public var ZOrder : unreal.Int32;
  
  /**
    When AutoSize is true we use the widget's desired size
  **/
  public var bAutoSize : Bool;
  
  /**
    The anchoring information for the slot
  **/
  public var LayoutData : unreal.umg.FAnchorData;
  
}
