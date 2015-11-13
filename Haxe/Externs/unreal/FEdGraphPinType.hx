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


/**
  Struct used to define the type of information carried on this pin
**/
@:glueCppIncludes("EdGraph/EdGraphPin.h")
@:uextern extern class FEdGraphPinType {
  
  /**
    Whether or not this is a weak reference
  **/
  public var bIsWeakPointer : Bool;
  
  /**
    Whether or not this pin is a immutable const value
  **/
  public var bIsConst : Bool;
  
  /**
    Whether or not this pin is a value passed by reference or not
  **/
  public var bIsReference : Bool;
  
  /**
    Whether or not this pin represents an array of values
  **/
  public var bIsArray : Bool;
  
  /**
    Sub-category member reference
  **/
  public var PinSubCategoryMemberReference : unreal.FSimpleMemberReference;
  
  /**
    Sub-category of pin type
  **/
  public var PinSubCategory : unreal.FString;
  
  /**
    Category of pin type
  **/
  public var PinCategory : unreal.FString;
  
}