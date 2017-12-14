# weak, unowned, implicitly unwrapped optionals

from [here](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/AutomaticReferenceCounting.html)

## weak

A weak reference is a reference that does not keep a strong hold on the instance
it refers to, and so does not stop ARC from disposing of the referenced
instance. This behavior prevents the reference from becoming part of a strong
reference cycle. You indicate a weak reference by placing the weak keyword
before a property or variable declaration.

Because a weak reference does not keep a strong hold on the instance it refers
to, it’s possible for that instance to be deallocated while the weak reference
is still referring to it. Therefore, ARC automatically sets a weak reference to
nil when the instance that it refers to is deallocated. And, because weak
references need to allow their value to be changed to nil at runtime, they are
always declared as variables, rather than constants, of an optional type.

You can check for the existence of a value in the weak reference, just like any
other optional value, and you will never end up with a reference to an invalid
instance that no longer exists.


## unowned

Like a weak reference, an unowned reference does not keep a strong hold on the
instance it refers to. Unlike a weak reference, however, an unowned reference is
used when the other instance has the same lifetime or a longer lifetime. You
indicate an unowned reference by placing the unowned keyword before a property
or variable declaration.

An unowned reference is expected to always have a value. As a result, ARC never
sets an unowned reference’s value to nil, which means that unowned references
are defined using nonoptional types.

## implicitly unwrapped optionals

However, there is a third scenario, in which both properties should always have
a value, and neither property should ever be nil once initialization is
complete. In this scenario, it’s useful to combine an unowned property on one
class with an implicitly unwrapped optional property on the other class.

This enables both properties to be accessed directly (without optional
unwrapping) once initialization is complete, while still avoiding a reference
cycle. This section shows you how to set up such a relationship.

The example below defines two classes, Country and City, each of which stores an
instance of the other class as a property. In this data model, every country
must always have a capital city, and every city must always belong to a country.
To represent this, the Country class has a capitalCity property, and the City
class has a country property.
