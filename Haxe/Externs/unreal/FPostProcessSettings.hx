/**
  This file was autogenerated by UE4HaxeExternGenerator using UHT definitions. It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
  In order to add more definitions, create or edit a type with the same name/package, but with a `_Extra` suffix
**/
package unreal;


/**
  To be able to use struct PostProcessSettings. // Each property consists of a bool to enable it (by default off),
  // the variable declaration and further down the default value for it.
  // The comment should include the meaning and usable range.
**/
@:glueCppIncludes("Camera/CameraAnim.h")
@:uextern extern class FPostProcessSettings {
  @:uname('new') public static function create():PHaxeCreated<unreal.FPostProcessSettings>;
  
  /**
    for backwards compatibility
  **/
  public var Blendables_DEPRECATED : unreal.TArray<unreal.UObject>;
  
  /**
    Allows custom post process materials to be defined, using a MaterialInstance with the same Material as its parent to allow blending.
    For materials this needs to be the "PostProcess" domain type. This can be used for any UObject object implementing the IBlendableInterface (e.g. could be used to fade weather settings).
  **/
  public var WeightedBlendables : unreal.FWeightedBlendables;
  
  /**
    Until what roughness we fade the screen space reflections, 0.8 works well, smaller can run faster
  **/
  public var ScreenSpaceReflectionMaxRoughness : unreal.Float32;
  
  /**
    0=lowest quality..100=maximum quality, only a few quality levels are implemented, no soft transition, 50 is the default for better performance.
  **/
  public var ScreenSpaceReflectionQuality : unreal.Float32;
  
  /**
    Enable/Fade/disable the Screen Space Reflection feature, in percent, avoid numbers between 0 and 1 fo consistency
  **/
  public var ScreenSpaceReflectionIntensity : unreal.Float32;
  
  /**
    TemporalAA, FXAA, ...
  **/
  public var AntiAliasingMethod : unreal.EAntiAliasingMethod;
  
  /**
    To render with lower or high resolution than it is presented,
    controlled by console variable,
    100:off, needs to be <99 to get upsampling and lower to get performance,
    >100 for super sampling (slower but higher quality),
    only applied in game
  **/
  public var ScreenPercentage : unreal.Float32;
  
  /**
    The minimum projected screen radius for a primitive to be drawn in the velocity pass, percentage of screen width. smaller numbers cause more draw calls, default: 4%
  **/
  public var MotionBlurPerObjectSize : unreal.Float32;
  
  /**
    max distortion caused by motion blur, in percent of the screen width, 0:off
  **/
  public var MotionBlurMax : unreal.Float32;
  
  /**
    Strength of motion blur, 0:off, should be renamed to intensity
  **/
  public var MotionBlurAmount : unreal.Float32;
  
  /**
    Artificial distance to allow the skybox to be in focus (e.g. 200000), <=0 to switch the feature off, only for GaussianDOF, can cost performance
  **/
  public var DepthOfFieldSkyFocusDistance : unreal.Float32;
  
  /**
    Size threshold to do full quality DOF (BokehDOF only)
  **/
  public var DepthOfFieldSizeThreshold : unreal.Float32;
  
  /**
    Color threshold to do full quality DOF (BokehDOF only)
  **/
  public var DepthOfFieldColorThreshold : unreal.Float32;
  
  /**
    Occlusion tweak factor 1 (0.18 to get natural occlusion, 0.4 to solve layer color leaking issues)
  **/
  public var DepthOfFieldOcclusion : unreal.Float32;
  
  /**
    Defines the shape of the Bokeh when object get out of focus, cannot be blended
  **/
  public var DepthOfFieldBokehShape : unreal.UTexture;
  
  /**
    Gaussian only: Maximum size of the Depth of Field blur (in percent of the view width) (note: performance cost scales with size)
  **/
  public var DepthOfFieldFarBlurSize : unreal.Float32;
  
  /**
    Gaussian only: Maximum size of the Depth of Field blur (in percent of the view width) (note: performance cost scales with size)
  **/
  public var DepthOfFieldNearBlurSize : unreal.Float32;
  
  /**
    BokehDOF only: Maximum size of the Depth of Field blur (in percent of the view width) (note: performance cost scales with size*size)
  **/
  public var DepthOfFieldMaxBokehSize : unreal.Float32;
  
  /**
    BokehDOF only: To amplify the depth of field effect (like aperture)  0=off
  **/
  public var DepthOfFieldScale : unreal.Float32;
  
  /**
    To define the width of the transition region next to the focal region on the near side (cm)
  **/
  public var DepthOfFieldFarTransitionRegion : unreal.Float32;
  
  /**
    To define the width of the transition region next to the focal region on the near side (cm)
  **/
  public var DepthOfFieldNearTransitionRegion : unreal.Float32;
  
  /**
    Artificial region where all content is in focus, starting after DepthOfFieldFocalDistance, in unreal units  (cm)
  **/
  public var DepthOfFieldFocalRegion : unreal.Float32;
  
  /**
    Distance in which the Depth of Field effect should be sharp, in unreal units (cm)
  **/
  public var DepthOfFieldFocalDistance : unreal.Float32;
  
  /**
    CircleDOF only: Defines the opening of the camera lens, Aperture is 1/fstop, typical lens go down to f/1.2 (large opening), larger numbers reduce the DOF effect
  **/
  public var DepthOfFieldFstop : unreal.Float32;
  
  /**
    CircleDOF only: Depth blur radius in pixels at 1920x
  **/
  public var DepthOfFieldDepthBlurRadius : unreal.Float32;
  
  /**
    CircleDOF only: Depth blur km for 50%
  **/
  public var DepthOfFieldDepthBlurAmount : unreal.Float32;
  
  /**
    BokehDOF, Simple gaussian, ...
  **/
  public var DepthOfFieldMethod : unreal.EDepthOfFieldMethod;
  
  /**
    Name of the LUT texture e.g. MyPackage01.LUTNeutral, empty if not used
  **/
  public var ColorGradingLUT : unreal.UTexture;
  
  /**
    0..1=full intensity
  **/
  public var ColorGradingIntensity : unreal.Float32;
  
  /**
    Scales the indirect lighting contribution. A value of 0 disables GI. Default is 1. The show flag 'Global Illumination' must be enabled to use this property.
  **/
  public var IndirectLightingIntensity : unreal.Float32;
  
  /**
    Adjusts indirect lighting color. (1,1,1) is default. (0,0,0) to disable GI. The show flag 'Global Illumination' must be enabled to use this property.
  **/
  public var IndirectLightingColor : unreal.FLinearColor;
  
  /**
    to tweak the bilateral upsampling when using multiple mips (lower resolution versions)
  **/
  public var AmbientOcclusionMipThreshold : unreal.Float32;
  
  /**
    Affects the radius AO radius scale over the multiple mips (lower resolution versions)
  **/
  public var AmbientOcclusionMipScale : unreal.Float32;
  
  /**
    Affects the blend over the multiple mips (lower resolution versions) , 0:fully use full resolution, 1::fully use low resolution, around 0.6 seems to be a good value
  **/
  public var AmbientOcclusionMipBlend : unreal.Float32;
  
  /**
    0=lowest quality..100=maximum quality, only a few quality levels are implemented, no soft transition
  **/
  public var AmbientOcclusionQuality : unreal.Float32;
  
  /**
    >0, in unreal units, default (3.0) works well for flat surfaces but can reduce details
  **/
  public var AmbientOcclusionBias : unreal.Float32;
  
  /**
    >0, in unreal units, bigger values means even distant surfaces affect the ambient occlusion
  **/
  public var AmbientOcclusionPower : unreal.Float32;
  
  /**
    >0, in unreal units, how wide the ambient occlusion effect should affect the geometry (in depth), will be removed - only used for non normal method which is not exposed
  **/
  public var AmbientOcclusionDistance_DEPRECATED : unreal.Float32;
  
  /**
    >0, in unreal units, how many units before AmbientOcclusionFadeOutDistance it starts fading out
  **/
  public var AmbientOcclusionFadeRadius : unreal.Float32;
  
  /**
    >0, in unreal units, at what distance the AO effect disppears in the distance (avoding artifacts and AO effects on huge object)
  **/
  public var AmbientOcclusionFadeDistance : unreal.Float32;
  
  /**
    true: AO radius is in world space units, false: AO radius is locked the view space in 400 units
  **/
  public var AmbientOcclusionRadiusInWS : Bool;
  
  /**
    >0, in unreal units, bigger values means even distant surfaces affect the ambient occlusion
  **/
  public var AmbientOcclusionRadius : unreal.Float32;
  
  /**
    0..1 0=no effect on static lighting .. 1=AO affects the stat lighting, 0 is free meaning no extra rendering pass
  **/
  public var AmbientOcclusionStaticFraction : unreal.Float32;
  
  /**
    0..1 0=off/no ambient occlusion .. 1=strong ambient occlusion, defines how much it affects the non direct lighting after base pass
  **/
  public var AmbientOcclusionIntensity : unreal.Float32;
  
  /**
    0..1 grain intensity
  **/
  public var GrainIntensity : unreal.Float32;
  
  /**
    0..1 grain jitter
  **/
  public var GrainJitter : unreal.Float32;
  
  /**
    0..1 0=off/no vignette .. 1=strong vignette
  **/
  public var VignetteIntensity : unreal.Float32;
  
  /**
    Defines the shape of the Bokeh when the image base lens flares are blurred, cannot be blended
  **/
  public var LensFlareBokehShape : unreal.UTexture;
  
  /**
    Minimum brightness the lens flare starts having effect (this should be as high as possible to avoid the performance cost of blurring content that is too dark too see)
  **/
  public var LensFlareThreshold : unreal.Float32;
  
  /**
    Size of the Lens Blur (in percent of the view width) that is done with the Bokeh texture (note: performance cost is radius*radius)
  **/
  public var LensFlareBokehSize : unreal.Float32;
  
  /**
    Tint color for the image based lens flares.
  **/
  public var LensFlareTint : unreal.FLinearColor;
  
  /**
    Brightness scale of the image cased lens flares (linear)
  **/
  public var LensFlareIntensity : unreal.Float32;
  
  /**
    temporary exposed until we found good values 4: 16, 8: 256
  **/
  public var HistogramLogMax : unreal.Float32;
  
  /**
    temporary exposed until we found good values, -8: 1/256, -10: 1/1024
  **/
  public var HistogramLogMin : unreal.Float32;
  
  /**
    Logarithmic adjustment for the exposure. Only used if a tonemapper is specified.
    0: no adjustment, -1:2x darker, -2:4x darker, 1:2x brighter, 2:4x brighter, ...
  **/
  public var AutoExposureBias : unreal.Float32;
  
  /**
    >0
  **/
  public var AutoExposureSpeedDown : unreal.Float32;
  
  /**
    >0
  **/
  public var AutoExposureSpeedUp : unreal.Float32;
  
  /**
    A good value should be positive (2 is a good value). This is the maximum brightness the auto exposure can adapt to.
    It should be tweaked in a bright lighting situation (too small: image appears too bright, too large: image appears too dark).
    Note: Tweaking emissive materials and lights or tweaking auto exposure can look the same. Tweaking auto exposure has global
    effect and defined the HDR range - you don't want to change that late in the project development.
    Eye Adaptation is disabled if MinBrightness = MaxBrightness
  **/
  public var AutoExposureMaxBrightness : unreal.Float32;
  
  /**
    A good value should be positive near 0. This is the minimum brightness the auto exposure can adapt to.
    It should be tweaked in a dark lighting situation (too small: image appears too bright, too large: image appears too dark).
    Note: Tweaking emissive materials and lights or tweaking auto exposure can look the same. Tweaking auto exposure has global
    effect and defined the HDR range - you don't want to change that late in the project development.
    Eye Adaptation is disabled if MinBrightness = MaxBrightness
  **/
  public var AutoExposureMinBrightness : unreal.Float32;
  
  /**
    The eye adaptation will adapt to a value extracted from the luminance histogram of the scene color.
    The value is defined as having x percent below this brightness. Higher values give bright spots on the screen more priority
    but can lead to less stable results. Lower values give the medium and darker values more priority but might cause burn out of
    bright spots.
    >0, <100, good values are in the range 80 .. 95
  **/
  public var AutoExposureHighPercent : unreal.Float32;
  
  /**
    The eye adaptation will adapt to a value extracted from the luminance histogram of the scene color.
    The value is defined as having x percent below this brightness. Higher values give bright spots on the screen more priority
    but can lead to less stable results. Lower values give the medium and darker values more priority but might cause burn out of
    bright spots.
    >0, <100, good values are in the range 70 .. 80
  **/
  public var AutoExposureLowPercent : unreal.Float32;
  
  /**
    The Ambient cubemap (Affects diffuse and specular shading), blends additively which if different from all other settings here
  **/
  public var AmbientCubemap : unreal.UTextureCube;
  
  /**
    To scale the Ambient cubemap brightness
    >=0: off, 1(default), >1 brighter
  **/
  public var AmbientCubemapIntensity : unreal.Float32;
  
  /**
    AmbientCubemap tint color
  **/
  public var AmbientCubemapTint : unreal.FLinearColor;
  
  /**
    Specular occlusion intensity - higher values provide increased specular occlusion.
  **/
  public var LPVSpecularOcclusionIntensity : unreal.Float32;
  
  /**
    Diffuse occlusion intensity - higher values provide increased diffuse occlusion.
  **/
  public var LPVDiffuseOcclusionIntensity : unreal.Float32;
  
  /**
    Specular occlusion exponent - increase for more contrast. 6 to 9 is recommended
  **/
  public var LPVSpecularOcclusionExponent : unreal.Float32;
  
  /**
    Diffuse occlusion exponent - increase for more contrast. 1 to 2 is recommended
  **/
  public var LPVDiffuseOcclusionExponent : unreal.Float32;
  
  /**
    Occlusion Radius - 16 is recommended for most scenes
  **/
  public var LPVDirectionalOcclusionRadius : unreal.Float32;
  
  /**
    Controls the amount of directional occlusion. Requires LPV. Values very close to 1.0 are recommended
  **/
  public var LPVDirectionalOcclusionIntensity : unreal.Float32;
  public var LPVEmissiveInjectionIntensity : unreal.Float32;
  
  /**
    Bias applied to the geometry volume in cell units. Increase to reduce darkening due to secondary occlusion
  **/
  public var LPVGeometryVolumeBias : unreal.Float32;
  
  /**
    Secondary bounce light strength (bounce light shadows). Set to 0 to disable
  **/
  public var LPVSecondaryBounceIntensity : unreal.Float32;
  
  /**
    Secondary occlusion strength (bounce light shadows). Set to 0 to disable
  **/
  public var LPVSecondaryOcclusionIntensity : unreal.Float32;
  
  /**
    The size of the LPV volume, in Unreal units
  **/
  public var LPVSize : unreal.Float32;
  
  /**
    Bias applied to light injected into the LPV in cell units. Increase to reduce bleeding through thin walls
  **/
  public var LPVVplInjectionBias : unreal.Float32;
  
  /**
    How strong the dynamic GI from the LPV should be. 0.0 is off, 1.0 is the "normal" value, but higher values can be used to boost the effect
  **/
  public var LPVIntensity : unreal.Float32;
  
  /**
    Texture that defines the dirt on the camera lens where the light of very bright objects is scattered.
  **/
  public var BloomDirtMask : unreal.UTexture;
  
  /**
    BloomDirtMask tint color
  **/
  public var BloomDirtMaskTint : unreal.FLinearColor;
  
  /**
    BloomDirtMask intensity
  **/
  public var BloomDirtMaskIntensity : unreal.Float32;
  
  /**
    Bloom6 tint color
  **/
  public var Bloom6Tint : unreal.FLinearColor;
  
  /**
    Bloom5 tint color
  **/
  public var Bloom5Tint : unreal.FLinearColor;
  
  /**
    Bloom4 tint color
  **/
  public var Bloom4Tint : unreal.FLinearColor;
  
  /**
    Bloom3 tint color
  **/
  public var Bloom3Tint : unreal.FLinearColor;
  
  /**
    Bloom2 tint color
  **/
  public var Bloom2Tint : unreal.FLinearColor;
  
  /**
    Bloom1 tint color
  **/
  public var Bloom1Tint : unreal.FLinearColor;
  
  /**
    Diameter size for Bloom6 in percent of the screen width
    (is done in 1/64 resolution, larger values cost more performance, best for wide contributions)
    >=0: can be clamped because of shader limitations
  **/
  public var Bloom6Size : unreal.Float32;
  
  /**
    Diameter size for Bloom5 in percent of the screen width
    (is done in 1/32 resolution, larger values cost more performance, best for wide contributions)
    >=0: can be clamped because of shader limitations
  **/
  public var Bloom5Size : unreal.Float32;
  
  /**
    Diameter size for Bloom4 in percent of the screen width
    (is done in 1/16 resolution, larger values cost more performance, best for wide contributions)
    >=0: can be clamped because of shader limitations
  **/
  public var Bloom4Size : unreal.Float32;
  
  /**
    Diameter size for Bloom3 in percent of the screen width
    (is done in 1/8 resolution, larger values cost more performance)
    >=0: can be clamped because of shader limitations
  **/
  public var Bloom3Size : unreal.Float32;
  
  /**
    Diameter size for Bloom2 in percent of the screen width
    (is done in 1/4 resolution, larger values cost more performance)
    >=0: can be clamped because of shader limitations
  **/
  public var Bloom2Size : unreal.Float32;
  
  /**
    Diameter size for the Bloom1 in percent of the screen width
    (is done in 1/2 resolution, larger values cost more performance, good for high frequency details)
    >=0: can be clamped because of shader limitations
  **/
  public var Bloom1Size : unreal.Float32;
  
  /**
    Scale for all bloom sizes
  **/
  public var BloomSizeScale : unreal.Float32;
  
  /**
    minimum brightness the bloom starts having effect
    -1:all pixels affect bloom equally (dream effect), 0:all pixels affect bloom brights more, 1(default), >1 brighter
  **/
  public var BloomThreshold : unreal.Float32;
  
  /**
    Multiplier for all bloom contributions >=0: off, 1(default), >1 brighter
  **/
  public var BloomIntensity : unreal.Float32;
  
  /**
    0..1, Scene chromatic aberration / color fringe (camera imperfection) to simulate an artifact that happens in real-world lens, mostly visible in the image corners.
  **/
  public var SceneFringeSaturation : unreal.Float32;
  
  /**
    in percent, Scene chromatic aberration / color fringe (camera imperfection) to simulate an artifact that happens in real-world lens, mostly visible in the image corners.
  **/
  public var SceneFringeIntensity : unreal.Float32;
  
  /**
    Scene tint color
  **/
  public var SceneColorTint : unreal.FLinearColor;
  public var FilmWhiteClip : unreal.Float32;
  public var FilmBlackClip : unreal.Float32;
  public var FilmShoulder : unreal.Float32;
  public var FilmToe : unreal.Float32;
  public var FilmSlope : unreal.Float32;
  public var FilmDynamicRange : unreal.Float32;
  public var FilmHealAmount : unreal.Float32;
  public var FilmToeAmount : unreal.Float32;
  public var FilmContrast : unreal.Float32;
  public var FilmChannelMixerBlue : unreal.FLinearColor;
  public var FilmChannelMixerGreen : unreal.FLinearColor;
  public var FilmChannelMixerRed : unreal.FLinearColor;
  public var FilmSaturation : unreal.Float32;
  public var FilmShadowTintAmount : unreal.Float32;
  public var FilmShadowTintBlend : unreal.Float32;
  public var FilmShadowTint : unreal.FLinearColor;
  public var FilmWhitePoint : unreal.FLinearColor;
  public var ColorOffset : unreal.FVector;
  public var ColorGain : unreal.FVector;
  public var ColorGamma : unreal.FVector;
  public var ColorContrast : unreal.FVector;
  public var ColorSaturation : unreal.FVector;
  public var WhiteTint : unreal.Float32;
  public var WhiteTemp : unreal.Float32;
  public var bOverride_ScreenSpaceReflectionRoughnessScale : Bool;
  public var bOverride_ScreenSpaceReflectionMaxRoughness : Bool;
  public var bOverride_ScreenSpaceReflectionQuality : Bool;
  public var bOverride_ScreenSpaceReflectionIntensity : Bool;
  public var bOverride_AntiAliasingMethod : Bool;
  public var bOverride_ScreenPercentage : Bool;
  public var bOverride_MotionBlurPerObjectSize : Bool;
  public var bOverride_MotionBlurMax : Bool;
  public var bOverride_MotionBlurAmount : Bool;
  public var bOverride_DepthOfFieldSkyFocusDistance : Bool;
  public var bOverride_DepthOfFieldSizeThreshold : Bool;
  public var bOverride_DepthOfFieldColorThreshold : Bool;
  public var bOverride_DepthOfFieldOcclusion : Bool;
  public var bOverride_DepthOfFieldBokehShape : Bool;
  public var bOverride_DepthOfFieldMethod : Bool;
  public var bOverride_DepthOfFieldFarBlurSize : Bool;
  public var bOverride_DepthOfFieldNearBlurSize : Bool;
  public var bOverride_DepthOfFieldMaxBokehSize : Bool;
  public var bOverride_DepthOfFieldScale : Bool;
  public var bOverride_DepthOfFieldFarTransitionRegion : Bool;
  public var bOverride_DepthOfFieldNearTransitionRegion : Bool;
  public var bOverride_DepthOfFieldFocalRegion : Bool;
  public var bOverride_DepthOfFieldDepthBlurAmount : Bool;
  public var bOverride_DepthOfFieldDepthBlurRadius : Bool;
  public var bOverride_DepthOfFieldFstop : Bool;
  public var bOverride_DepthOfFieldFocalDistance : Bool;
  public var bOverride_ColorGradingLUT : Bool;
  public var bOverride_ColorGradingIntensity : Bool;
  public var bOverride_IndirectLightingIntensity : Bool;
  public var bOverride_IndirectLightingColor : Bool;
  public var bOverride_LPVEmissiveInjectionIntensity : Bool;
  public var bOverride_LPVVplInjectionBias : Bool;
  public var bOverride_LPVGeometryVolumeBias : Bool;
  public var bOverride_LPVSecondaryBounceIntensity : Bool;
  public var bOverride_LPVSecondaryOcclusionIntensity : Bool;
  public var bOverride_LPVSize : Bool;
  public var bOverride_LPVSpecularOcclusionIntensity : Bool;
  public var bOverride_LPVDiffuseOcclusionIntensity : Bool;
  public var bOverride_LPVSpecularOcclusionExponent : Bool;
  public var bOverride_LPVDiffuseOcclusionExponent : Bool;
  public var bOverride_LPVDirectionalOcclusionRadius : Bool;
  public var bOverride_LPVDirectionalOcclusionIntensity : Bool;
  public var bOverride_LPVIntensity : Bool;
  public var bOverride_AmbientOcclusionMipThreshold : Bool;
  public var bOverride_AmbientOcclusionMipScale : Bool;
  public var bOverride_AmbientOcclusionMipBlend : Bool;
  public var bOverride_AmbientOcclusionQuality : Bool;
  public var bOverride_AmbientOcclusionBias : Bool;
  public var bOverride_AmbientOcclusionPower : Bool;
  public var bOverride_AmbientOcclusionRadiusInWS : Bool;
  public var bOverride_AmbientOcclusionDistance_DEPRECATED : Bool;
  public var bOverride_AmbientOcclusionFadeRadius : Bool;
  public var bOverride_AmbientOcclusionFadeDistance : Bool;
  public var bOverride_AmbientOcclusionRadius : Bool;
  public var bOverride_AmbientOcclusionStaticFraction : Bool;
  public var bOverride_AmbientOcclusionIntensity : Bool;
  public var bOverride_GrainJitter : Bool;
  public var bOverride_GrainIntensity : Bool;
  public var bOverride_VignetteIntensity : Bool;
  public var bOverride_LensFlareThreshold : Bool;
  public var bOverride_LensFlareBokehShape : Bool;
  public var bOverride_LensFlareBokehSize : Bool;
  public var bOverride_LensFlareTints : Bool;
  public var bOverride_LensFlareTint : Bool;
  public var bOverride_LensFlareIntensity : Bool;
  public var bOverride_HistogramLogMax : Bool;
  public var bOverride_HistogramLogMin : Bool;
  public var bOverride_AutoExposureBias : Bool;
  public var bOverride_AutoExposureSpeedDown : Bool;
  public var bOverride_AutoExposureSpeedUp : Bool;
  public var bOverride_AutoExposureMaxBrightness : Bool;
  public var bOverride_AutoExposureMinBrightness : Bool;
  public var bOverride_AutoExposureHighPercent : Bool;
  public var bOverride_AutoExposureLowPercent : Bool;
  public var bOverride_BloomDirtMask : Bool;
  public var bOverride_BloomDirtMaskTint : Bool;
  public var bOverride_BloomDirtMaskIntensity : Bool;
  public var bOverride_BloomSizeScale : Bool;
  public var bOverride_Bloom6Size : Bool;
  public var bOverride_Bloom6Tint : Bool;
  public var bOverride_Bloom5Size : Bool;
  public var bOverride_Bloom5Tint : Bool;
  public var bOverride_Bloom4Size : Bool;
  public var bOverride_Bloom4Tint : Bool;
  public var bOverride_Bloom3Size : Bool;
  public var bOverride_Bloom3Tint : Bool;
  public var bOverride_Bloom2Tint : Bool;
  public var bOverride_Bloom2Size : Bool;
  public var bOverride_Bloom1Size : Bool;
  public var bOverride_Bloom1Tint : Bool;
  public var bOverride_BloomThreshold : Bool;
  public var bOverride_BloomIntensity : Bool;
  public var bOverride_AmbientCubemapIntensity : Bool;
  public var bOverride_AmbientCubemapTint : Bool;
  public var bOverride_SceneFringeSaturation : Bool;
  public var bOverride_SceneFringeIntensity : Bool;
  public var bOverride_SceneColorTint : Bool;
  public var bOverride_FilmWhiteClip : Bool;
  public var bOverride_FilmBlackClip : Bool;
  public var bOverride_FilmShoulder : Bool;
  public var bOverride_FilmToe : Bool;
  public var bOverride_FilmSlope : Bool;
  public var bOverride_FilmShadowTintAmount : Bool;
  public var bOverride_FilmShadowTintBlend : Bool;
  public var bOverride_FilmShadowTint : Bool;
  public var bOverride_FilmToeAmount : Bool;
  public var bOverride_FilmHealAmount : Bool;
  public var bOverride_FilmDynamicRange : Bool;
  public var bOverride_FilmContrast : Bool;
  public var bOverride_FilmChannelMixerBlue : Bool;
  public var bOverride_FilmChannelMixerGreen : Bool;
  public var bOverride_FilmChannelMixerRed : Bool;
  public var bOverride_FilmSaturation : Bool;
  public var bOverride_FilmWhitePoint : Bool;
  public var bOverride_ColorOffset : Bool;
  public var bOverride_ColorGain : Bool;
  public var bOverride_ColorGamma : Bool;
  public var bOverride_ColorContrast : Bool;
  public var bOverride_ColorSaturation : Bool;
  public var bOverride_WhiteTint : Bool;
  
  /**
    first all bOverride_... as they get grouped together into bitfields
  **/
  public var bOverride_WhiteTemp : Bool;
  
}
