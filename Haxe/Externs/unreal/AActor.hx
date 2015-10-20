package unreal;

import unreal.FActorTickFunction;

@:glueCppIncludes("Engine.h")
@:uextern extern class AActor extends UObject
{
  @:UPROPERTY public var bHidden:Bool;
  // TODO: allow private vars
  // @:UPROPERTY private var bEditable:Bool;
  public var PrimaryActorTick:PStruct<FActorTickFunction>;

  public function Tick(DeltaSeconds:Float32) : Void;

  // public function ActorHasTag(tag:FName):Bool;
}
