# Promise Kit

* [watch me](https://academy.realm.io/posts/swift-summit-javier-soto-futures/)
* solves the problem of async code bracket hell
* monad under the hood

https://learnappmaking.com/promises-swift-how-to/


## Classes
`Guarantee<T>`

`Thenable`

`seal`

## Guarantee
* a `Guarantee` always succeeds.

## Promises
* A `Promise` is something you make to someone else.
* A `Promise` can be rejected, but a ‘Guarantee’ always succeeds.

## Futures
* In the Future you may choose to honor (resolve) that promise, or reject it.

* `Future`s & `Promise`s are two sides of the same coin. A promise gets
constructed, then returned as a future, where it can be used to extract
information at a later point.


```swift
class Future<Value> {
    fileprivate var result: Result<Value>? {
        // Observe whenever a result is assigned, and report it
        didSet { result.map(report) }
    }
    private lazy var callbacks = [(Result<Value>) -> Void]()

    func observe(with callback: @escaping (Result<Value>) -> Void) {
        callbacks.append(callback)

        // If a result has already been set, call the callback directly
        result.map(callback)
    }

    private func report(result: Result<Value>) {
        for callback in callbacks {
            callback(result)
        }
    }
}
```

```swift
class Promise<Value>: Future<Value> {
    init(value: Value? = nil) {
        super.init()

        // If the value was already known at the time the promise
        // was constructed, we can report the value directly
        result = value.map(Result.value)
    }

    func resolve(with value: Value) {
        result = .value(value)
    }

    func reject(with error: Error) {
        result = .error(error)
    }
}
```
