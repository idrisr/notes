# `NSOperation` aka `Operation`

* from [nshipster](http://nshipster.com/nsoperation/)
* apple [docs](https://developer.apple.com/documentation/foundation/operation)
* [readme](https://www.raywenderlich.com/190008/operation-and-operationqueue-tutorial-in-swift)

[readme](https://agostini.tech/2017/07/30/understanding-operation-and-operationqueue-in-swift/)

`NSOperation` represents a single unit of work. It’s an abstract class that offers
a useful, thread-safe structure for modeling state, priority, dependencies, and
management.

For situations where it doesn’t make sense to build out a custom `NSOperation`
subclass, Foundation provides the concrete implementations `NSBlockOperation` and
`NSInvocationOperation`.

Examples of tasks that lend themselves well to `NSOperation` include network
requests, image resizing, text processing, or any other repeatable, structured,
long-running task that produces associated state or data.

But simply wrapping computation into an object doesn’t do much without a little
oversight. That’s where `NSOperationQueue` comes in.
