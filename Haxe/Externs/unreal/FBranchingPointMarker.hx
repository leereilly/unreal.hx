/**
  This file was autogenerated by UE4HaxeExternGenerator using UHT definitions. It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
  In order to add more definitions, create or edit a type with the same name/package, but with a `_Extra` suffix
**/
package unreal;


/**
  AnimNotifies marked as BranchingPoints will create these markers on their Begin/End times.
        They create stopping points when the Montage is being ticked to dispatch events.
**/
@:glueCppIncludes("Animation/AnimMontage.h")
@:uextern extern class FBranchingPointMarker {
  @:uname('new') public static function create():PHaxeCreated<unreal.FBranchingPointMarker>;
  public var NotifyEventType : unreal.EAnimNotifyEventType;
  public var TriggerTime : unreal.Float32;
  public var NotifyIndex : unreal.Int32;
  
}
