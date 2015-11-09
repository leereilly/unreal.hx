/**
  This file was autogenerated by UE4HaxeExternGenerator using UHT definitions. It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
  In order to add more definitions, create or edit a type with the same name/package, but with a `_Extra` suffix
**/
package unreal.blueprintgraph;


/**
  !!! The proxy object should have RF_StrongRefOnFrame flag. !!!
**/
@:umodule("BlueprintGraph")
@:glueCppIncludes("K2Node_BaseAsyncTask.h")
@:uextern extern class UK2Node_BaseAsyncTask extends unreal.blueprintgraph.UK2Node {
  
  /**
    The name of the 'go' function on the proxy object that will be called after delegates are in place, can be NAME_None
  **/
  private var ProxyActivateFunctionName : unreal.FName;
  
  /**
    The type of proxy object that will be created
  **/
  private var ProxyClass : unreal.UClass;
  
  /**
    The class containing the proxy object functions
  **/
  private var ProxyFactoryClass : unreal.UClass;
  
  /**
    The name of the function to call to create a proxy object
  **/
  private var ProxyFactoryFunctionName : unreal.FName;
  
}
