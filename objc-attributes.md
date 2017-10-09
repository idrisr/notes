go read [this](http://www.codingexplorer.com/property-attributes-in-objective-c/)

# ARC

## weak

This gives a pointer to an object, but does not claim ownership, and does not increase the retain count.  It basically keeps a valid pointer to an object as long as another class points to it strongly.  If nothing else is trying to retain it, the weak pointer is automatically set to nil.  An example where this would be useful is if you had two classes, one for a petOwner, and one for their pet.  Lets say for some reason we want them to refer to each other, so you can request the pet of an owner, or an owner of a pet.  If the pet’s petOwner property, and the petOwner’s pet property were both strong, the memory could never be released because they would both be telling ARC that they both need it.  If we set the petOwner’s pet property to weak, then we avoid the retain cycle.  If the pet object is destroyed, while the petOwner still has a reference to it, the petOwner’s pet property will be automatically set to nil.

## strong

This is also a default attribute, and must be overridden if you want to change it.  In ARC, its opposite is the “weak” attribute.  I started post-ARC, so my first-hand knowledge is better with strong and weak, compared to the pre-ARC ones listed later.  Strong is generally used by a class to establish ownership of an object.  It increases the retain count (something ARC deals with for you), it basically keeps the object that is pointed to in memory until that class instance stops pointing to it.  This is usually what you want, but there it can cause something called a “retain cycle.”  The weak attribute helps solve this issue.

# ???

* copy

# Threading

## atomic

Properties are atomic by default, so if you don’t write nonatomic, it will be atomic (whether you write it or not).  Atomic basically ensures that data is written or read atomically.  So if thread A is still in the getter when thread B calls the setter, thread A will get a viable value.  It is not necessarily thread-safe, but much safer than nonatomic.  The problem with atomic though, is that it is quite slow compared to its opposite.  Also, you must either implement both the setter and the getter, or neither. You cannot have a custom getter and a synthesized setter in an atomic property.

## nonatomic

This makes no such guarantees about atomicity (which is quite a cool word) as nonatomic.  If thread A is in the middle of a getter for a nonatomic NSString, and Thread B tries to set it to “Microwave”, and Thread C tries to set it to “Refrigerator”, you might get “Microgerator”, or it may just be completely unreadable and crash the program.  You never know, so if you use nonatomic, you must implement your own thread safety and atomicity.  You will more often use nonatomic properties though, because they are FAST when compared to atomic ones.

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
