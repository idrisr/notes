## `@objc` decorator in Swift

It's a class attribute that makes the class and its method available to ObjC classes.

The compiler infers where these should be anytime you inherit from `NSObject` or
conform to an ObjectiveC protocol.

The `@objc` attribute optionally accepts a single attribute argument, which
consists of an identifier. The identifier specifies the name to be exposed to
Objective-C for the entity that the objc attribute applies to. You can use this
argument to name classes, enumerations, enumeration cases, protocols, methods,
getters, setters, and initializers. If you specify the Objective-C name for a
class, protocol, or enumeration, include a three-letter prefix on the name, as
described in Conventions in Programming with Objective-C. The example below
exposes the getter for the enabled property of the ExampleClass to Objective-C
code as isEnabled rather than just as the name of the property itself.

## `@nonobjc` decorator in Swift

## `@objcMembers`

basically it lets you be lazy and not mark all of the methods `@objc` cause
this will do it for you all at once

When a Swift class introduces many new methods or properties that require
behavior from the Objective-C runtime, use the @objcMembers attribute in the
declaration of that class. Applying the @objcMembers attribute to a class
implicitly adds the @objc attribute to all of its Objective-C compatible
members. Because applying the @objc attribute can increase the compiled size of
an app and adversely affect performance, only apply the @objcMembers attribute
on declarations when each member needs to have the @objc attribute applied.
