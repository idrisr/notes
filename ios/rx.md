# Subjects

## PublishSubjects
starts empty and only emits new elements to subscribers

## BehaviorSubjects
starts with an initial value and replays it or the latest element to new
subscribers

## ReplaySubjects
initialized with a buffer size and will maintain a buffer of elements up to that
size and replay it to new subscribers

## Variable
wraps a BehaviorSubject, preserves its current value as state, and replays onto
the latest/initial value to new subscribers

# Classes

`UIBindingObserver`

`ControlEvent`

# Building Blocks

## `Observables`
The `Observable<T>` class provides the foundation of Rx code: the ability to
asynchronously produce a sequence of events that can “carry” an immutable
snapshot of data `T`. In the simplest words, it allows classes to subscribe for
values emitted by another class over time.

* an `Observable` is really a sequence definition
* subscribing to an `Observable` is really
* more like calling `next()` on an `Iterator` in the Swift
standard library.

## `Operators`
you can apply Rx operators to the pieces of input emitted by an `Observable` to
deterministically process inputs and outputs until the expression has been
resolved to a final value, which you can then use to cause side effects.

[operators](http://reactivex.io/documentation/operators.html)

* `filter`
* `map`
* `subscribe`

## `Schedulers`
Schedulers are the Rx equivalent of dispatch queues — just on steroids and much easier to use.

You can specify that you’d like to observe for next events on
`SerialDispatchQueueScheduler`, which uses Grand Central Dispatch to serialize
running your code on a given queue.

`ConcurrentDispatchQueueScheduler` will run your code concurrently.
`OperationQueueScheduler` will allow you to schedule your subscriptions on a given
`NSOperationQueue`.

# Architecture

The reason MVVM and RxSwift go great together is that a ViewModel allows you to
expose `Observable<T>` properties, which you can bind directly to UIKit controls
in your View Controller glue code. This makes binding model data to the UI very
simple to represent, and to code.

## `Observable`
```swift
public class Observable<Element> : ObservableType {
    /// Type of elements in sequence.
    public typealias E = Element


    public func subscribe<O: ObserverType>(_ observer: O) -> Disposable where O.E == E {
        rxAbstractMethod() // needs to be in subclass
    }

    public func asObservable() -> Observable<E> {
        return self
    }

    // this is kind of ugly I know :(
    // Swift compiler reports "Not supported yet" when trying to override protocol extensions, so ¯\_(ツ)_/¯

    /// Optimizations for map operator
    internal func composeMap<R>(_ transform: @escaping (Element) throws -> R) -> Observable<R> {
        return _map(source: self, transform: transform)
    }
}
```

# `Subject`
* both an `observable` and an `observer`.

## `PublishSubject`
  - only emits to current subscribers
* like a newspaper publisher,
* it will receive information and then
* turn around and publish it to subscribers,
* possibly after modifying that information in some way first

## `BehaviorSubject`
* Starts with an initial value and replays it or the latest element to new
subscribers.

## `ReplaySubject`
* Initialized with a buffer size and will maintain a buffer of elements up to
that size and replay it to new subscribers.

## `Variable`
* Wraps a `BehaviorSubject`, preserves its current value as state, and replays
only the latest/initial value to new subscribers.
