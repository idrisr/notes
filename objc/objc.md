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
