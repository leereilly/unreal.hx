/**
  This file was autogenerated by UE4HaxeExternGenerator using UHT definitions. It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
  In order to add more definitions, create or edit a type with the same name/package, but with a `_Extra` suffix
**/
package unreal;

@:glueCppIncludes("Materials/MaterialExpressionTextureSampleParameter.h")
@:uextern extern class UMaterialExpressionTextureSampleParameter extends unreal.UMaterialExpressionTextureSample {
  
  /**
    The name of the parameter Group to display in MaterialInstance Editor. Default is None group
  **/
  public var Group : unreal.FName;
  
  /**
    GUID that should be unique within the material, this is used for parameter renaming.
  **/
  public var ExpressionGUID : unreal.FGuid;
  public var ParameterName : unreal.FName;
  
}
