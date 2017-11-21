# Object Mapper

https://github.com/Hearst-DD/ObjectMapper

`ObjectMapper` is a framework written in Swift that makes it easy for you to
convert your model objects (classes and structs) to and from JSON.

```swift
/// BaseMappable should not be implemented directly. Mappable or StaticMappable should be used instead
public protocol BaseMappable {
	/// This function is where all variable mappings should occur. It is executed by Mapper during the mapping (serialization and deserialization) process.
	mutating func mapping(map: Map)
}
```

```swift
public protocol Mappable: BaseMappable {
    /// This function can be used to validate JSON prior to mapping. Return nil to cancel mapping at this point
    init?(map: Map)
}
```

```swift
public protocol StaticMappable: BaseMappable {
	/// This is function that can be used to:
	///		1) provide an existing cached object to be used for mapping
	///		2) return an object of another class (which conforms to BaseMappable) to be used for mapping. For instance, you may inspect the JSON to infer the type of object that should be used for any given mapping
	static func objectForMapping(map: Map) -> BaseMappable?
}
```
