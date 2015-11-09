/**
  This file was autogenerated by UE4HaxeExternGenerator using UHT definitions. It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
  In order to add more definitions, create or edit a type with the same name/package, but with a `_Extra` suffix
**/
package unreal.gameplayabilities;

@:umodule("GameplayAbilities")
@:glueCppIncludes("GameplayEffectExtension.h")
@:uextern extern class UGameplayEffectExtension extends unreal.UObject {
  
  /**
    Attributes on the target that are relevant to calculating modifications using this extension
  **/
  public var RelevantTargetAttributes : unreal.TArray<unreal.gameplayabilities.FGameplayAttribute>;
  
  /**
    Attributes on the source instigator that are relevant to calculating modifications using this extension
  **/
  public var RelevantSourceAttributes : unreal.TArray<unreal.gameplayabilities.FGameplayAttribute>;
  
}
