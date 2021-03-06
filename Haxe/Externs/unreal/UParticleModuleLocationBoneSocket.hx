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
package unreal;


/**
  WARNING: This type was not defined as DLL export on its declaration. Because of that, its properties/methods are inaccessible
  
  
**/
@:glueCppIncludes("Particles/Location/ParticleModuleLocationBoneSocket.h")
@:noClass @:uextern extern class UParticleModuleLocationBoneSocket extends unreal.UParticleModuleLocationBase {
  #if WITH_EDITORONLY_DATA
  
  /**
    The name of the skeletal mesh to use in the editor
  **/
  public var EditorSkelMesh : unreal.USkeletalMesh;
  #end // WITH_EDITORONLY_DATA
  
  /**
    The parameter name of the skeletal mesh actor that supplies the SkelMeshComponent for in-game.
  **/
  public var SkelMeshActorParamName : unreal.FName;
  
  /**
    If true, particles inherit the associated bone velocity when spawned
  **/
  public var bInheritBoneVelocity : Bool;
  
  /**
    If true, rotate mesh emitter meshes to orient w/ the socket
  **/
  public var bOrientMeshEmitters : Bool;
  
  /**
    If true, update the particle locations each frame with that of the bone/socket
  **/
  public var bUpdatePositionEachFrame : Bool;
  
  /**
    The method by which to select the bone/socket to spawn at.
    
    SEL_Sequential                  - loop through the bone/socket array in order
    SEL_Random                              - randomly select a bone/socket from the array
  **/
  public var SelectionMethod : unreal.ELocationBoneSocketSelectionMethod;
  
  /**
    The name(s) of the bone/socket(s) to position at
  **/
  public var SourceLocations : unreal.TArray<unreal.FLocationBoneSocketInfo>;
  
  /**
    An offset to apply to each bone/socket
  **/
  public var UniversalOffset : unreal.FVector;
  
  /**
    Whether the module uses Bones or Sockets for locations.
    
    BONESOCKETSOURCE_Bones          - Use Bones as the source locations.
    BONESOCKETSOURCE_Sockets        - Use Sockets as the source locations.
  **/
  public var SourceType : unreal.ELocationBoneSocketSource;
  
}
