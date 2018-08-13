go read [this](http://www.codingexplorer.com/property-attributes-in-objective-c/)

# ARC

## weak

* gives a pointer to an object, but does not claim ownership,
* does not increase the retain count.  
* basically keeps a valid pointer to an object as long as another class points to it strongly.  
* If nothing else is trying to retain it, the weak pointer is automatically set to nil.  

An example where this would be useful is if you had two classes, one for a
``petOwner``, and one for their `pet`.  Lets say for some reason we want them to refer
to each other, so you can request the `pet` of an owner, or an owner of a `pet`.  If
the `pet`’s `petOwner` property, and the `petOwner`’s `pet` property were both strong,
the memory could never be released because they would both be telling ARC that
they both need it. If we set the `petOwner`’s `pet` property to weak, then we avoid
the retain cycle. If the pet object is destroyed, while the `petOwner` still has a
reference to it, the `petOwner`’s `pet` property will be automatically set to nil.

## strong

This is also a default attribute, and must be overridden if you want to change
it.  In ARC, its opposite is the “weak” attribute.  I started post-ARC, so my
first-hand knowledge is better with strong and weak, compared to the pre-ARC
ones listed later.  Strong is generally used by a class to establish ownership
of an object.  It increases the retain count (something ARC deals with for you),
it basically keeps the object that is pointed to in memory until that class
instance stops pointing to it.  This is usually what you want, but there it can
cause something called a “retain cycle.”  The weak attribute helps solve this
issue.

# ???

* copy

# Threading

## atomic

Properties are atomic by default, so if you don’t write nonatomic, it will be
atomic (whether you write it or not).  Atomic basically ensures that data is
written or read atomically.  So if thread A is still in the getter when thread B
calls the setter, thread A will get a viable value.  It is not necessarily
thread-safe, but much safer than nonatomic.  The problem with atomic though, is
that it is quite slow compared to its opposite.  Also, you must either implement
both the setter and the getter, or neither. You cannot have a custom getter and
a synthesized setter in an atomic property.

## nonatomic

This makes no such guarantees about atomicity (which is quite a cool word) as
nonatomic.  If thread A is in the middle of a getter for a nonatomic NSString,
and Thread B tries to set it to “Microwave”, and Thread C tries to set it to
“Refrigerator”, you might get “Microgerator”, or it may just be completely
unreadable and crash the program.  You never know, so if you use nonatomic, you
must implement your own thread safety and atomicity.  You will more often use
nonatomic properties though, because they are FAST when compared to atomic ones.

# Swift Compatability

## nullable

## nonnullable

* atomic
* nonatomic
* strong
* weak
* readwrite
* readonly
* getter=
* setter=
* copy
* assign
* retain
* unsafe_unretained

## objc generics

TODO: read this
from [here](https://www.mikeash.com/pyblog/friday-qa-2015-11-20-covariance-and-contravariance.html)

Subtypes and supertypes are a common part of modern programming. Covariance and contravariance tell us where subtypes are accepted and where supertypes are accepted in place of the original type. This shows up frequently in most of the programming most of us do, but many developers are unaware of the concepts beyond a loose instinctual sense. Today I'm going to discuss it in detail.

Covariance and Contravariance
The astute reader may notice that the title of the article contains these two terms which I have carefully avoided using this whole time. Now that we're firm on the concepts, let's talk about the terminology.

### variances

* Covariance is when subtypes are accepted. Overridden read-only properties are covariant.
* Contravariance is when supertypes are accepted. The parameters of overridden methods are contravariant.
* Invariance is when neither supertypes nor subtypes are accepted. Swift generics are invariant.
* Bivariance is when both supertypes and subtypes are accpted. I can't think of any examples of bivariance in Objective-C or Swift.

You may find the terminology hard to remember. That's OK! It's not really that important. As long as you understand subtyping, supertyping, and what causes a subtype or supertype to be acceptable in any given place, you can just look up the terminology in the unlikely event that you need it.

## `synthesize`
```objc
@synthesize mapView = mapView1;
```

This line tells the compiler to create a `setter` and `getter` for `mapView`, and
that they should use the ivar called `mapView1`. Without the `= mapView1` part, the
compiler would assume that the property and ivar have the same name.
