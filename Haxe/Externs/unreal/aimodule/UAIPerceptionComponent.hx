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
package unreal.aimodule;


/**
  AIPerceptionComponent is used to register as stimuli listener in AIPerceptionSystem
  and gathers registered stimuli. UpdatePerception is called when component gets new stimuli (batched)
**/
@:umodule("AIModule")
@:glueCppIncludes("Perception/AIPerceptionComponent.h")
@:uextern extern class UAIPerceptionComponent extends unreal.UActorComponent {
  private var AIOwner : unreal.aimodule.AAIController;
  
  /**
    Indicated sense that takes precedence over other senses when determining sensed actor's location.
        Should be set to one of the sences configured in SensesConfig, or None.
  **/
  private var DominantSense : unreal.TSubclassOf<unreal.aimodule.UAISense>;
  private var SensesConfig : unreal.TArray<unreal.aimodule.UAISenseConfig>;
  private var PeripheralVisionAngle : unreal.Float32;
  private var LoseSightRadius : unreal.Float32;
  private var SightRadius : unreal.Float32;
  private var LoSHearingRange : unreal.Float32;
  private var HearingRange : unreal.Float32;
  @:final public function OnOwnerEndPlay(EndPlayReason : unreal.EEndPlayReason) : Void;
  
  /**
    Notifies AIPerceptionSystem to update properties for this "stimuli listener"
  **/
  @:final public function RequestStimuliListenerUpdate() : Void;
  
  /**
    blueprint interface
  **/
  @:thisConst @:final public function GetPerceivedHostileActors(OutActors : unreal.PRef<unreal.TArray<unreal.AActor>>) : Void;
  
  /**
    If SenseToUse is none all actors perceived in any way will get fetched
  **/
  @:thisConst @:final public function GetPerceivedActors(SenseToUse : unreal.TSubclassOf<unreal.aimodule.UAISense>, OutActors : unreal.PRef<unreal.TArray<unreal.AActor>>) : Void;
  
}
