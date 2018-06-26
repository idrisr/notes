# Dynamic Dispatch

Dynamic dispatch is the process of selecting which implementation of a
polymorphic operation (method or function) to call at run time.

* [readme](https://medium.com/@kahseng.lee123/accomplishing-dynamic-dispatch-on-pats-protocol-with-associated-types-b29d1242e939)
* [andme](https://medium.com/@PavloShadov/https-medium-com-pavloshadov-swift-protocols-magic-of-dynamic-static-methods-dispatches-dfe0e0c85509)

 ## `dynamic`

* is essence, use the `objc` runtime for dispatch. In the future `dynamic` might
have a different underlying mechanism for achieving dynamic dispatch that is not tied
to the `objc` runtime.

from [here](https://krakendev.io/blog/hipster-swift#special-literals)

The `dynamic` keyword is a declaration modifier that you can apply to either
function or variable declarations. You may see this when using libraries like
`Realm` or something similar for app analytics. What `dynamic` does is tells the
runtime to use dynamic dispatch over static dispatch for the function or
variables modified. It also implicitly adds the `@objc` attribute to the variable
or function declaration.

As an important note, anything using the `dynamic` keyword uses the Objective-C
runtime instead of the Swift runtime to dispatch messages to it.

Now we love static dispatch. However, app analytics doesn't like it so much.
It's hard to generate and insert analytics code dynamically when functions are
mostly static by default. `dynamic` is useful for these situations but sacrifices
optimizations we get from static dispatch.

## `objc` vs `dynamic`
* [readme](https://swiftunboxed.com/interop/objc-dynamic/)

* The `@objc` attribute controls visibility of Swift bits from Objective-C.

* `@objc` means you want your Swift code (class, method, property, etc.) to be visible from Objective-C.
* `dynamic` means you want to use Objective-C dynamic dispatch.

### Swift 3
* `dynamic` implied @objc.

### Swift 4
* `dynamic` does not imply @objc.
* but there's no other to get `dynamic` behavior other than through `@objc`
* so if you use `dynamic`, you have to use `objc`
