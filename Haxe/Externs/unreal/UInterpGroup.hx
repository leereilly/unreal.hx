/**
  This file was autogenerated by UE4HaxeExternGenerator using UHT definitions. It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
  In order to add more definitions, create or edit a type with the same name/package, but with a `_Extra` suffix
**/
package unreal;

@:glueCppIncludes("Matinee/InterpGroup.h")
@:uextern extern class UInterpGroup extends unreal.UObject {
  
  /**
    When true, this group is considered a 'visual child' of another group.  This doesn't at all affect the behavior of the group, it's only for visual organization.  Also, it's implied that the parent is the next prior group in the array that doesn't have a parent.
  **/
  public var bIsParented : Bool;
  
  /**
    When enabled, this group is treated like a folder in the editor, which should only be used for organization.  Folders are never associated with actors and don't have a presence in the Kismet graph.
  **/
  public var bIsFolder : Bool;
  
  /**
    Whether or not this group is visible in the editor.
  **/
  public var bVisible : Bool;
  
  /**
    Whether or not this group is folded away in the editor.
  **/
  public var bCollapsed : Bool;
  
  /**
    Colour used for drawing tracks etc. related to this group.
  **/
  public var GroupColor : unreal.FColor;
  
  /**
    Within an InterpData, all GroupNames must be unique.
    Used for naming Variable connectors on the Action in Kismet and finding each groups object.
  **/
  public var GroupName : unreal.FName;
  public var InterpTracks : unreal.TArray<unreal.UInterpTrack>;
  
}
