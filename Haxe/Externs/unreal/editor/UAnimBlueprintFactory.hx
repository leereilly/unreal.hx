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
package unreal.editor;


/**
  WARNING: This type was defined as MinimalAPI on its declaration. Because of that, its properties/methods are inaccessible
  
  
**/
@:umodule("UnrealEd")
@:glueCppIncludes("Factories/AnimBlueprintFactory.h")
@:uextern extern class UAnimBlueprintFactory extends unreal.editor.UFactory {
  
  /**
    The kind of skeleton that animation graphs compiled from the blueprint will animate
  **/
  public var TargetSkeleton : unreal.USkeleton;
  
  /**
    The parent class of the created blueprint
  **/
  public var ParentClass : unreal.TSubclassOf<unreal.UAnimInstance>;
  
  /**
    The type of blueprint that will be created
  **/
  public var BlueprintType : unreal.EBlueprintType;
  
}
