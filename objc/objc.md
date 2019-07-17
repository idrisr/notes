# Objective-C

## building blocks


### `IMP`

* A pointer to the start of a method implementation.
* This data type is a pointer to the start of the function that implements the method. 
* This function uses standard C calling conventions as implemented for the current CPU architecture. 
* The first argument is a pointer to self (that is, the memory for the particular instance of this class, or, for a class method, a pointer to the metaclass). 
* The second argument is the method selector. The method arguments follow.


```c
/// A pointer to the function of a method implementation. 
#if !OBJC_OLD_DISPATCH_PROTOTYPES
typedef void (*IMP)(void /* id, SEL, ... */ ); 
#else
typedef id _Nullable (*IMP)(id _Nonnull, SEL _Nonnull, ...); 
#endif
```

### `SEL`
### `id`
### `Protocol`
### `Method`
### `Class`

## runtime
* the first two parameters passed to all Objective-C methods are `self` and `_cmd`

* Note that any C function that takes an `id` and `SEL` as its first two arguments can
be used as a method implementation.
* Similarly, any method implementation is a C function that takes an `id` and `SEL`
as its first two arguments.

* To be extra clear, `_cmd` is an `SEL` -- the method selector for the
Objective-C method.
* A method selector is a C string that has been registered (or 'mapped') with
the Objective-C runtime.


```objc
# does object respond to message
if ([self.webView respondsToSelector:_cmd])
```

## messaging

```c
# memory structure objc c class
struct NSObject {
  Class isa;
}
```
```c
typedef Class = objc_class;
```
```c
struct objc_class {
  Class isa;
  Class super_class;
  const char *name;
  long version;
  long info;
  long instance_size;
  struct objc_ivar_list *ivars;
  struct objc_method_lists **methodLists;
  struct objc_cache *cache;
  struct objc_protocol_list *protocols;
}
```
```objc
[self doSomethingTo:var1]; #  is transformed into something like:
objc_msgSend(self, @selector(doSomethingTo:), var1);
```

  A selector in Objective-C is a struct that identifies an Objective-C method you
want an object to perform, and defined:

```objc
typedef struct objc_selector *SEL
```

```objc
SEL select = @selector(doSomething)
```
```C
# implementation of objc_msgSend
id objc_msgSend(id receiver, SEL name, arguments...) {
  # IMP is a c function pointer
  IMP function = class_getMethodImplementation(receiver->isa, name);
  return function(arguments);
}
```

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

## `__block`
It tells the compiler that any variable marked by it must be treated in a
special way when it is used inside a block. Normally, variables and their
contents that are also used in blocks are copied, thus any modification done to
these variables don't show outside the block. When they are marked with
`__block`, the modifications done inside the block are also visible outside of
it.

For an example and more info, see The `__block` Storage Type in Apple's Blocks Programming Topics.

## Runtime

### `objc_property_t`
* An opaque type that represents an Objective-C declared property.


### `objc_selector`

```c
// objc.h
/// An opaque type that represents a method selector.
typedef struct objc_selector *SEL;
```