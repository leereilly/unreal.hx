/**
  This file was autogenerated by UE4HaxeExternGenerator using UHT definitions. It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
  In order to add more definitions, create or edit a type with the same name/package, but with a `_Extra` suffix
**/
package unreal;


/**
  Enum for controlling which reference frame a controller is applied in.
**/
@:glueCppIncludes("AnimPreviewInstance.h")
@:uname("EBoneControlSpace")
@:uextern extern enum EBoneControlSpace {
  
  /**
    Set absolute position of bone in world space.
    @DisplayName World Space
  **/
  @DisplayName("World Space")
  BCS_WorldSpace;
  
  /**
    Set position of bone in SkeletalMeshComponent's reference frame.
    @DisplayName Component Space
  **/
  @DisplayName("Component Space")
  BCS_ComponentSpace;
  
  /**
    Set position of bone relative to parent bone.
    @DisplayName Parent Bone Space
  **/
  @DisplayName("Parent Bone Space")
  BCS_ParentBoneSpace;
  
  /**
    Set position of bone in its own reference frame.
    @DisplayName Bone Space
  **/
  @DisplayName("Bone Space")
  BCS_BoneSpace;
  
}
