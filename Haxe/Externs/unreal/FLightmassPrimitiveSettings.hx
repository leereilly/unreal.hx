/**
  This file was autogenerated by UE4HaxeExternGenerator using UHT definitions. It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
  In order to add more definitions, create or edit a type with the same name/package, but with a `_Extra` suffix
**/
package unreal;


/**
  Per-object settings for Lightmass
**/
@:glueCppIncludes("Lightmass/LightmassPrimitiveSettingsObject.h")
@:uextern extern class FLightmassPrimitiveSettings {
  @:uname('new') public static function create():PHaxeCreated<unreal.FLightmassPrimitiveSettings>;
  
  /**
    Fraction of samples taken that must be occluded in order to reach full occlusion.
  **/
  public var FullyOccludedSamplesFraction : unreal.Float32;
  
  /**
    Scales the diffuse contribution of all materials applied to this object.
  **/
  public var DiffuseBoost : unreal.Float32;
  
  /**
    Scales the emissive contribution of all materials applied to this object.
  **/
  public var EmissiveBoost : unreal.Float32;
  
  /**
    Direct lighting influence radius.
    The default is 0, which means the influence radius should be automatically generated based on the emissive light brightness.
    Values greater than 0 override the automatic method.
  **/
  public var EmissiveLightExplicitInfluenceRadius : unreal.Float32;
  
  /**
    Direct lighting falloff exponent for mesh area lights created from emissive areas on this primitive.
  **/
  public var EmissiveLightFalloffExponent : unreal.Float32;
  
  /**
    Typically the triangle normal is used for hemisphere gathering which prevents incorrect self-shadowing from artist-tweaked vertex normals.
    However in the case of foliage whose vertex normal has been setup to match the underlying terrain, gathering in the direction of the vertex normal is desired.
  **/
  public var bUseVertexNormalForHemisphereGather : Bool;
  
  /**
    If true, allow using the emissive for static lighting.
  **/
  public var bUseEmissiveForStaticLighting : Bool;
  
  /**
    If true, this object will only shadow indirect lighting.
  **/
  public var bShadowIndirectOnly : Bool;
  
  /**
    If true, this object will be lit as if it receives light from both sides of its polygons.
  **/
  public var bUseTwoSidedLighting : Bool;
  
}
