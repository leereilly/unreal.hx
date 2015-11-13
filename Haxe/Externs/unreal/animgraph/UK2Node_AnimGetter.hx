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
package unreal.animgraph;

@:umodule("AnimGraph")
@:glueCppIncludes("K2Node_AnimGetter.h")
@:uextern extern class UK2Node_AnimGetter extends unreal.blueprintgraph.UK2Node_CallFunction {
  
  /**
    List of valid contexts for the node
  **/
  public var Contexts : unreal.TArray<unreal.FString>;
  
  /**
    The anim blueprint that generated this getter
  **/
  public var SourceAnimBlueprint : unreal.UAnimBlueprint;
  
  /**
    The UAnimInstance derived class that implements the getter we are running
  **/
  public var GetterClass : unreal.UClass;
  
  /**
    UAnimStateNode doesn't use the same hierarchy so we need to have a seperate property here to handle
    those.
  **/
  public var SourceStateNode : unreal.animgraph.UAnimStateNodeBase;
  
  /**
    The node that is required for the getter
  **/
  public var SourceNode : unreal.animgraph.UAnimGraphNode_Base;
  
}