/**
  This file was autogenerated by UE4HaxeExternGenerator using UHT definitions. It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
  In order to add more definitions, create or edit a type with the same name/package, but with a `_Extra` suffix
**/
package unreal.gameplaytasks;


/**
  The core ActorComponent for interfacing with the GameplayAbilities System
**/
@:umodule("GameplayTasks")
@:glueCppIncludes("GameplayTasksComponent.h")
@:uextern extern class UGameplayTasksComponent extends unreal.UActorComponent implements unreal.gameplaytasks.IGameplayTaskOwnerInterface {
  private var TaskPriorityQueue : unreal.TArray<unreal.gameplaytasks.UGameplayTask>;
  
  /**
    Tasks that run on simulated proxies
  **/
  private var SimulatedTasks : unreal.TArray<unreal.gameplaytasks.UGameplayTask>;
  
}
