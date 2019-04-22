# Opaque Types

Basically it's a type that hides the details of how it's implemented so that you cant be a dummy and access the implementation details directly because you'd probably screw it up somehow.

Opaque types aren't classes, though they are often referred to as classes.

see here for [more](https://developer.apple.com/library/content/documentation/CoreFoundation/Conceptual/CFDesignConcepts/Articles/OpaqueTypes.html#//apple_ref/doc/uid/20001106-CJBEJBHH)

You hide the details of the properties and functions by not exposing them in the header file, so they're only accesssible to the 