# Objective-C

## message send

## runtime

## introspection

## ownership qualifiers
* `__strong`
* `__autoreleasing`
* `__unsafe_unretained`
* `__weak`

from [here](https://stackoverflow.com/questions/8592289/arc-the-meaning-of-unsafe-unretained)

Both `__unsafe_unretained` and `__weak` prevent the retention of objects, but in
slightly different ways. For `__weak`, the pointer to an object will convert to
nil on the deallocation of the object it points to, which is very safe behavior.
As its name implies, `__unsafe_unretained` will continue pointing to the memory
where an object was, even after it was deallocated. This can lead to crashes due
to accessing that deallocated object.

Why would you ever use `__unsafe_unretained` then? Unfortunately, `__weak` is only
supported for iOS 5.0 and Lion as deployment targets. If you want to target back
to iOS 4.0 and Snow Leopard, you have to use the `__unsafe_unretained` qualifier,
or use something like Mike Ash's

## categories

from [here](https://developer.apple.com/library/content/documentation/General/Conceptual/DevPedia-CocoaCore/Category.html)

You use categories to define additional methods of an existing class—even one
whose source code is unavailable to you—without subclassing. You typically use a
category to add methods to an existing class, such as one defined in the Cocoa
frameworks. The added methods are inherited by subclasses and are
indistinguishable at runtime from the original methods of the class. You can
also use categories of your own classes to:

* Distribute the implementation of your own classes into separate source files—for example, you could group the methods of a large class into several categories and put each category in a different file.
* Declare private methods.

You add methods to a class by declaring them in an interface file under a
category name and defining them in an implementation file under the same name.
The category name indicates that the methods are an extension to a class
declared elsewhere, not a new class.

### Declaration
The declaration of a category interface looks very much like a class
interface declaration—except that the category name is listed within parentheses
after the class name and the superclass isn’t mentioned. A category must import
the interface file for the class it extends:

```objc
#import "SystemClass.h"

@interface SystemClass (CategoryName)
// method declarations
@end
```

## `isa`
Under the hood, Objective-C objects are basically C structs. Each one contains a
field called `isa`, which is a pointer to the class that the object is an instance
of (that's how the object and Objective-C runtime knows what kind of object it
is).
