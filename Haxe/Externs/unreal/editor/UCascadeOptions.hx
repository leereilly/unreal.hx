/**
  This file was autogenerated by UE4HaxeExternGenerator using UHT definitions. It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
  In order to add more definitions, create or edit a type with the same name/package, but with a `_Extra` suffix
**/
package unreal.editor;

@:umodule("UnrealEd")
@:glueCppIncludes("Preferences/CascadeOptions.h")
@:uextern extern class UCascadeOptions extends unreal.UObject {
  
  /**
    The radius of the motion mode
  **/
  public var MotionModeRadius : unreal.Float32;
  
  /**
    The number of units the mouse must move before considering the module as dragged.
  **/
  public var Cascade_MouseMoveThreshold : unreal.Int32;
  
  /**
    If true, center the module name and buttons in the module box.
  **/
  public var bCenterCascadeModuleText : Bool;
  
  /**
    The height to use for the 'slimline' module drawing method in cascade.
  **/
  public var SlimCascadeDrawHeight : unreal.Int32;
  
  /**
    If true, use the 'slimline' module drawing method in cascade.
  **/
  public var bUseSlimCascadeDraw : Bool;
  public var ShowPPFlags : unreal.Int32;
  public var FloorScale3D : unreal.FVector;
  public var FloorScale : unreal.Float32;
  public var FloorRotation : unreal.FRotator;
  public var FloorPosition : unreal.FVector;
  public var FloorMesh : unreal.FString;
  public var bShowFloor : Bool;
  public var ParticleMemoryUpdateTime : unreal.Float32;
  public var bShowParticleMemory : Bool;
  public var bShowParticleDistance : Bool;
  public var bShowParticleTimes : Bool;
  public var bShowParticleEvents : Bool;
  public var bShowParticleCounts : Bool;
  public var GridPerspectiveSize : unreal.Float32;
  public var GridColor_Low : unreal.FColor;
  public var GridColor_Hi : unreal.FColor;
  public var bShowGrid : Bool;
  public var ModuleColor_Event_Selected : unreal.FColor;
  public var ModuleColor_Event_Unselected : unreal.FColor;
  public var ModuleColor_Required_Selected : unreal.FColor;
  public var ModuleColor_Required_Unselected : unreal.FColor;
  public var ModuleColor_Light_Selected : unreal.FColor;
  public var ModuleColor_Light_Unselected : unreal.FColor;
  public var ModuleColor_Spawn_Selected : unreal.FColor;
  public var ModuleColor_Spawn_Unselected : unreal.FColor;
  public var ModuleColor_Trail_Selected : unreal.FColor;
  public var ModuleColor_Trail_Unselected : unreal.FColor;
  public var ModuleColor_Beam_Selected : unreal.FColor;
  public var ModuleColor_Beam_Unselected : unreal.FColor;
  public var ModuleColor_TypeData_Selected : unreal.FColor;
  public var ModuleColor_TypeData_Unselected : unreal.FColor;
  public var ModuleColor_General_Selected : unreal.FColor;
  public var ModuleColor_General_Unselected : unreal.FColor;
  public var Emitter_Selected : unreal.FColor;
  public var Emitter_Unselected : unreal.FColor;
  public var Emitter_Background : unreal.FColor;
  public var Empty_Background : unreal.FColor;
  public var bUseSpaceBarResetInLevel : Bool;
  public var bUseSpaceBarReset : Bool;
  public var bUseSubMenus : Bool;
  public var BackgroundColor : unreal.FColor;
  public var bShowModuleDump : Bool;
  
}
