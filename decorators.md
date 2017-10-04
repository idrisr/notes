## @objc decorator in Swift

It's a class attribute that makes the class and its method available to ObjC classes.

The compiler infers where these should be anytime you inherit from NSObject or
conform to an ObjectiveC protocol.

The `@objc` attribute optionally accepts a single attribute argument, which consists of an identifier. The identifier specifies the name to be exposed to Objective-C for the entity that the objc attribute applies to. You can use this argument to name classes, enumerations, enumeration cases, protocols, methods, getters, setters, and initializers. If you specify the Objective-C name for a class, protocol, or enumeration, include a three-letter prefix on the name, as described in Conventions in Programming with Objective-C. The example below exposes the getter for the enabled property of the ExampleClass to Objective-C code as isEnabled rather than just as the name of the property itself.

## @nonobjc decorator in Swift
