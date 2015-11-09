/**
  This file was autogenerated by UE4HaxeExternGenerator using UHT definitions. It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
  In order to add more definitions, create or edit a type with the same name/package, but with a `_Extra` suffix
**/
package unreal;


/**
  ActorComponent is the base class for components that define reusable behavior that can be added to different types of Actors.
  ActorComponents that have a transform are known as SceneComponents and those that can be rendered are PrimitiveComponents.
  
  @see [ActorComponent](https://docs.unrealengine.com/latest/INT/Programming/UnrealArchitecture/Actors/Components/index.html#actorcomponents)
  @see USceneComponent
  @see UPrimitiveComponent
**/
@:glueCppIncludes("Components/ActorComponent.h")
@:uextern extern class UActorComponent extends unreal.UObject implements unreal.IInterface_AssetUserData {
  public var CreationMethod : unreal.EComponentCreationMethod;
  
  /**
    If true, we call the virtual BeginPlay
  **/
  public var bWantsBeginPlay : Bool;
  public var bEditableWhenInherited : Bool;
  
  /**
    Whether the component is currently active.
  **/
  public var bIsActive : Bool;
  
  /**
    Whether to the component is activated at creation or must be explicitly activated.
  **/
  public var bAutoActivate : Bool;
  
  /**
    True if this component was created as an instance component
  **/
  public var bInstanceComponent_DEPRECATED : Bool;
  
  /**
    True if this component was created by a construction script, and will be destroyed by DestroyConstructedComponents
  **/
  public var bCreatedByConstructionScript_DEPRECATED : Bool;
  
  /**
    Array of user data stored with the component
  **/
  private var AssetUserData : unreal.TArray<unreal.UAssetUserData>;
  
  /**
    Array of tags that can be used for grouping and categorizing. Can also be accessed from scripting.
  **/
  public var ComponentTags : unreal.TArray<unreal.FName>;
  
  /**
    Main tick function for the Actor
  **/
  public var PrimaryComponentTick : unreal.FActorComponentTickFunction;
  
}
