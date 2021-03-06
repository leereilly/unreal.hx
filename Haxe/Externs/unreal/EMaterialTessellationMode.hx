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
  This is used by the drawing passes to determine tessellation policy, so changes here need to be supported in native code.
**/
@:glueCppIncludes("Materials/Material.h")
@:uname("EMaterialTessellationMode")
@:uextern extern enum EMaterialTessellationMode {
  
  /**
    Tessellation disabled.
    @DisplayName No Tessellation
  **/
  @DisplayName("No Tessellation")
  MTM_NoTessellation;
  
  /**
    Simple tessellation.
    @DisplayName Flat Tessellation
  **/
  @DisplayName("Flat Tessellation")
  MTM_FlatTessellation;
  
  /**
    Simple spline based tessellation.
    @DisplayName PN Triangles
  **/
  @DisplayName("PN Triangles")
  MTM_PNTriangles;
  
}
