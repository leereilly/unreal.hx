/**
  This file was autogenerated by UE4HaxeExternGenerator using UHT definitions. It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
  In order to add more definitions, create or edit a type with the same name/package, but with a `_Extra` suffix
**/
package unreal;

@:glueCppIncludes("AI/Navigation/NavLinkDefinition.h")
@:uextern extern class FNavigationLink extends unreal.FNavigationLinkBase {
  @:uname('new') public static function create():PHaxeCreated<unreal.FNavigationLink>;
  public var Right : unreal.FVector;
  public var Left : unreal.FVector;
  
}
