/**
  This file was autogenerated by UE4HaxeExternGenerator using UHT definitions. It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
  In order to add more definitions, create or edit a type with the same name/package, but with a `_Extra` suffix
**/
package unreal;


/**
  Root node of a state machine transition graph
**/
@:glueCppIncludes("AnimGraphNode_TransitionResult.h")
@:uextern extern class FAnimNode_TransitionResult extends unreal.FAnimNode_Base {
  @:uname('new') public static function create():PHaxeCreated<unreal.FAnimNode_TransitionResult>;
  public var bCanEnterTransition : Bool;
  
}
