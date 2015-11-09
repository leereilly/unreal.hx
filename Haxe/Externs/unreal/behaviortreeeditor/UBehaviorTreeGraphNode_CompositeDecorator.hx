/**
  This file was autogenerated by UE4HaxeExternGenerator using UHT definitions. It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
  In order to add more definitions, create or edit a type with the same name/package, but with a `_Extra` suffix
**/
package unreal.behaviortreeeditor;

@:umodule("BehaviorTreeEditor")
@:glueCppIncludes("BehaviorTreeGraphNode_CompositeDecorator.h")
@:uextern extern class UBehaviorTreeGraphNode_CompositeDecorator extends unreal.behaviortreeeditor.UBehaviorTreeGraphNode {
  private var CachedDescription : unreal.FString;
  private var ParentNodeInstance : unreal.aimodule.UBTCompositeNode;
  
  /**
    updated with internal graph changes, set when decorators inside can abort flow
  **/
  public var bCanAbortFlow : Bool;
  
  /**
    if set, all logic operations will be shown in description
  **/
  public var bShowOperations : Bool;
  public var CompositeName : unreal.FString;
  
  /**
    The logic graph for this decorator (returning a boolean)
  **/
  public var BoundGraph : unreal.UEdGraph;
  
}
