package unreal;

/**
  `PStruct` annotates a type that is expected to be passed/returned by value on C++.
  Note that on the Haxe side, the type will still be used by reference
 **/
@:unrealType
@:forward
abstract PStruct<T>(T) from T to T {}
