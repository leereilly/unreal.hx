/**
  This file was autogenerated by UE4HaxeExternGenerator using UHT definitions. It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
  In order to add more definitions, create or edit a type with the same name/package, but with a `_Extra` suffix
**/
package unreal.aimodule;

@:umodule("AIModule")
@:glueCppIncludes("Actions/PawnAction_Sequence.h")
@:uextern extern class UPawnAction_Sequence extends unreal.aimodule.UPawnAction {
  public var RecentActionCopy : unreal.aimodule.UPawnAction;
  public var ChildFailureHandlingMode : unreal.aimodule.EPawnActionFailHandling;
  public var ActionSequence : unreal.TArray<unreal.aimodule.UPawnAction>;
  
}
