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

@:umodule("AIModule")
@:glueCppIncludes("AISystem.h")
@:uextern extern class UAISystem extends unreal.UAISystemBase {
  private var HotSpotManager : unreal.aimodule.UAIHotSpotManager;
  private var AllProxyObjects : unreal.TArray<unreal.aimodule.UAIAsyncTaskBlueprintProxy>;
  private var PerceptionSystem : unreal.aimodule.UAIPerceptionSystem;
  
  /**
    Environment query manager used by game
  **/
  private var EnvironmentQueryManager : unreal.aimodule.UEnvQueryManager;
  
  /**
    Behavior tree manager used by game
  **/
  private var BehaviorTreeManager : unreal.aimodule.UBehaviorTreeManager;
  
  /**
    this property is just a transition-time flag - in the end we're going to switch over to Gameplay Tasks anyway, that's the goal.
  **/
  public var bEnableBTAITasks : Bool;
  public var bAllowStrafing : Bool;
  public var bAcceptPartialPaths : Bool;
  public var bFinishMoveOnGoalOverlap : Bool;
  public var AcceptanceRadius : unreal.Float32;
  private var HotSpotManagerClassName : unreal.FStringClassReference;
  private var PerceptionSystemClassName : unreal.FStringClassReference;
  
  /**
    cheats
  **/
  public function AIIgnorePlayers() : Void;
  public function AILoggingVerbose() : Void;
  
}
