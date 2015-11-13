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

@:umodule("UMG")
@:glueCppIncludes("Components/ExpandableArea.h")
@:uextern extern class UExpandableArea extends unreal.umg.UWidget implements unreal.umg.INamedSlotInterface {
  private var BodyContent : unreal.umg.UWidget;
  private var HeaderContent : unreal.umg.UWidget;
  public var AreaPadding : unreal.slatecore.FMargin;
  
  /**
    The maximum height of the area
  **/
  public var MaxHeight : unreal.Float32;
  public var bIsExpanded : Bool;
  @:thisConst @:final public function GetIsExpanded() : Bool;
  @:final public function SetIsExpanded(IsExpanded : Bool) : Void;
  // NamedSlotInterface interface implementation
  
}