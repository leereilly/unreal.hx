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
package unreal.gameplaydebugger;

@:umodule("GameplayDebugger")
@:glueCppIncludes("GameplayDebuggingComponent.h")
@:uextern extern class UGameplayDebuggingComponent extends unreal.UPrimitiveComponent implements unreal.aimodule.IEQSQueryResultSourceInterface {
  
  /**
    controller related stuff
  **/
  public var TargetActor : unreal.AActor;
  public var bIsUsingAbilities : Bool;
  public var bIsUsingBehaviorTree : Bool;
  public var bIsUsingCharacter : Bool;
  public var bIsUsingPathFollowing : Bool;
  public var NextPathPointIndex : unreal.Int32;
  
  /**
    End EQS replication data
  **/
  public var SensingComponentLocation : unreal.FVector;
  
  /**
    Begin EQS replication data
  **/
  public var EQSRepData : unreal.TArray<unreal.UInt8>;
  
  /**
    End path replication data
  **/
  public var NavmeshRepData : unreal.TArray<unreal.UInt8>;
  public var PathCorridorData : unreal.TArray<unreal.UInt8>;
  
  /**
    Begin path replication data
  **/
  public var PathPoints : unreal.TArray<unreal.FVector>;
  public var BlackboardRepData : unreal.TArray<unreal.UInt8>;
  public var BrainComponentString : unreal.FString;
  public var BrainComponentName : unreal.FString;
  public var MontageInfo : unreal.FString;
  public var AbilityInfo : unreal.FString;
  public var NavDataInfo : unreal.FString;
  public var GameplayTasksState : unreal.FString;
  public var CurrentAIAssets : unreal.FString;
  public var CurrentAIState : unreal.FString;
  public var CurrentAITask : unreal.FString;
  public var PathFollowingInfo : unreal.FString;
  public var MovementModeInfo : unreal.FString;
  public var MovementBaseInfo : unreal.FString;
  public var DebugIcon : unreal.FString;
  public var PawnClass : unreal.FString;
  public var PawnName : unreal.FString;
  public var ControllerName : unreal.FString;
  public var ReplicateViewDataCounters : unreal.TArray<unreal.Int32>;
  public var ShowExtendedInformatiomCounter : unreal.Int32;
  public var DebugComponentClassName : unreal.FString;
  public function OnCycleDetailsView() : Void;
  public function OnRep_UpdateEQS() : Void;
  public function OnRep_UpdateBlackboard() : Void;
  public function OnRep_UpdateNavmesh() : Void;
  @:final public function ServerReplicateData(InMessage : unreal.FakeUInt32, DataView : unreal.FakeUInt32) : Void;
  public function ServerCollectNavmeshData(TargetLocation : unreal.FVector_NetQuantize10) : Void;
  public function ServerDiscardNavmeshData() : Void;
  public function OnRep_PathCorridorData() : Void;
  public function ClientEnableTargetSelection(bEnable : Bool) : Void;
  // EQSQueryResultSourceInterface interface implementation
  
}
