 # `Operation` previously `NSOperation`

* from [here](http://nshipster.com/nsoperation/)

# `Operation`

`Operation` represents a single unit of work. It’s an abstract class that offers a
useful, thread-safe structure for modeling state, priority, dependencies, and
management.

For situations where it doesn’t make sense to build out a custom `Operation`
subclass, Foundation provides the concrete implementations `BlockOperation` and
`NSInvocationOperation`.

## `BlockOperation`
Use this class to initiate operation with one or more blocks. The operation
itself can contain more than one block and the operation will be considered as
finish when all blocks are executed.

## `NSInvocationOperation`
Use this class to initiate an operation that consists of invoking a selector on
a specified object.

## `OperationQueue`
* backed by GCD

`libdispatch`

# `KVO` compliant

* `isCancelled` - read-only
* `isAsynchronous` - read-only
* `isExecuting` - read-only
* `isFinished` - read-only
* `isReady` - read-only
* `dependencies` - read-only
* `queuePriority` - readable and writable
`completionBlock` - readable and writable

## State
`ready → executing → finished`

### `ready`
Returns true to indicate that the operation is ready to execute, or false if
there are still unfinished initialization steps on which it is dependent.

### `executing`
Returns true if the operation is currently working on its task, or false otherwise.

### `finished`
Returns true if the operation’s task finished execution successfully, or if the
operation was cancelled. An `NSOperationQueue` does not dequeue an operation until
finished changes to true, so it is critical to implement this correctly in
subclasses to avoid deadlock.

### `NSOperationQueuePriority`

```swift
public enum QueuePriority : Int {
    case veryLow
    case low
    case normal
    case high
    case veryHigh
}
```

## Quality of Service

```swift
@available(iOS 8.0, OSX 10.10, *)
public enum QualityOfService : Int {    
    case userInteractive
    case userInitiated
    case utility
    case background
    case `default`
}
```


## Dependencies
Dependencies are a convenient way to execute operations in a specific order. You
can add and remove dependencies for an operation using the `addDependency(_:)` and
`removeDependency(_:)` methods.

Depending on the complexity of an application, it may make sense to divide up
large tasks into a series of composable sub-tasks. This can be done with
`NSOperation` dependencies.

For example, to describe the process of:
* downloading
* and resizing an image from a server,

one might divide up

* networking into one operation,
* and resizing into another
  * (perhaps to reuse the networking operation to download other resources,
  * or also use the resizing operation for images already cached in memory).

However, since an image can’t be resized until it’s downloaded, then the
networking operation is a dependency of the resizing operation, and must be
finished before the resizing operation can be started.

Expressed in code:

```swift
let networkingOperation: Operation = ...
let resizingOperation: Operation = ...
resizingOperation.addDependency(networkingOperation)

let operationQueue = OperationQueue.main
operationQueue.addOperations([networkingOperation, resizingOperation], waitUntilFinished: false)
```
