/**
  This file was autogenerated by UE4HaxeExternGenerator using UHT definitions. It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
  In order to add more definitions, create or edit a type with the same name/package, but with a `_Extra` suffix
**/
package unreal;

@:glueCppIncludes("Engine/SCS_Node.h")
@:uextern extern class USCS_Node extends unreal.UObject {
  
  /**
    (DEPRECATED) If true, the variable name was a autogenerated and is not presented to the user
  **/
  public var bVariableNameAutoGenerated_DEPRECATED : Bool;
  
  /**
    (DEPRECATED) If this is a native component, this is the name of the UActorComponent
  **/
  public var NativeComponentName_DEPRECATED : unreal.FName;
  
  /**
    (DEPRECATED) Indicates if this is a native component or not
  **/
  public var bIsNative_DEPRECATED : Bool;
  
  /**
    (DEPRECATED)
  **/
  public var bIsFalseRoot_DEPRECATED : Bool;
  public var VariableGuid : unreal.FGuid;
  
  /**
    Metadata information for this Node
  **/
  public var MetaDataArray : unreal.TArray<unreal.FBPVariableMetaDataEntry>;
  
  /**
    Set of child nodes
  **/
  public var ChildNodes : unreal.TArray<unreal.USCS_Node>;
  
  /**
    If the node is parented, this indicates whether or not the template is found in the CDO's Components array
  **/
  public var bIsParentComponentNative : Bool;
  
  /**
    If the node is attached to another node inherited from a parent Blueprint, this contains the name of the Blueprint parent class that owns the component template //@TODO: We can potentially remove this if/when inherited SCS component template instances are included in subobject serialization, as we could then infer that the owner class is always the same as the BP class.
  **/
  public var ParentComponentOwnerClassName : unreal.FName;
  
  /**
    Component template or variable that Node might be parented to
  **/
  public var ParentComponentOrVariableName : unreal.FName;
  
  /**
    Socket/Bone that Node might attach to
  **/
  public var AttachToName : unreal.FName;
  
  /**
    If non-None, creates a variable in the class and assigns the created blueprint to it
  **/
  public var VariableName : unreal.FName;
  
  /**
    Template for the component to create
  **/
  public var ComponentTemplate : unreal.UActorComponent;
  
}
