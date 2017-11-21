# Rx Swift

RxSwift is a library for composing asynchronous and event-based code by using
observable sequences and functional style operators, allowing for parameterized
execution via schedulers.

RxSwift, in its essence, simplifies developing asynchronous programs by allowing
your code to react to new data and process it in sequential, isolated manner.

RxSwift finds the sweet spot between traditionally imperative Cocoa code and
purist functional code. It allows you to react to events by using immutable code
definitions to process asynchronously pieces of input in a deterministic,
composable way.

The three building blocks of Rx code are observables, operators, and schedulers.
The sections below cover each of these in detail.

## observable
The `Observable<T>` class provides the foundation of Rx code: the ability to
asynchronously produce a sequence of events that can “carry” an immutable
snapshot of data `T`. In the simplest words, it allows classes to subscribe for
values emitted by another class over time.

And an `Observable` is just a sequence, with some special powers. One of them, in
fact the most important one, is that it is asynchronous. `Observables` produce
events, the process of which is referred to as emitting, over a period of time.
Events can contain values, such as numbers or instances of a custom  type, or
they can be recognized gestures, such as taps.

An `observable` won’t send events until it has a subscriber.
Remember that an `observable` is really a sequence definition; subscribing to an
`observable` is really more like calling `next()` on an `Iterator` in the Swift
standard library.

## event
```swift
/// A type-erased `ObservableType`.
///
/// It represents a push style sequence.
public class Observable<Element> : ObservableType {
    /// Type of elements in sequence.
    public typealias E = Element

    init() {
#if TRACE_RESOURCES
        let _ = Resources.incrementTotal()
#endif
    }

    public func subscribe<O: ObserverType>(_ observer: O) -> Disposable where O.E == E {
        rxAbstractMethod()
    }

    public func asObservable() -> Observable<E> {
        return self
    }

    deinit {
#if TRACE_RESOURCES
        let _ = Resources.decrementTotal()
#endif
    }

    // this is kind of ugly I know :(
    // Swift compiler reports "Not supported yet" when trying to override protocol extensions, so ¯\_(ツ)_/¯

    /// Optimizations for map operator
    internal func composeMap<R>(_ transform: @escaping (Element) throws -> R) -> Observable<R> {
        return _map(source: self, transform: transform)
    }
}
```

```swift
public enum Event<Element> {
    /// Next element is produced.
    case next(Element)
    /// Sequence terminated with an error.
    case error(Swift.Error)
    /// Sequence completed successfully.
    case completed
}
```


### Finite Observable Sequence
Some observable sequences emit zero, one, or more values, and at a later point,
either terminate successfully or terminate with an error.

### Infinite Observable Sequence
UI events for example

## operator
`ObservableType` and the implementation of `Observable` class include plenty of
methods that abstract discrete pieces of asynchronous work, which can be
composed together to implement more complex logic. Because they are highly
decoupled and composable, these methods are most often referred to as `operator`s.
Since these `operator`s mostly take in asynchronous input and only produce output
without causing side effects, they can easily fit together, much like puzzle
pieces, and work to build a bigger picture.

## schedulers
`scheduler`s are the Rx equivalent of dispatch queues — just on steroids and much
easier to use.

### MVVM
The reason MVVM and RxSwift go great together is that a `ViewModel` allows you to
expose `Observable<T>` properties, which you can bind directly to UIKit controls
in your View Controller glue code. This makes binding model data to the UI very
simple to represent, and to code:

## What is an `observable`?

all the same:  
observable, observable sequence, sequence, stream

observables emit events, until it either emits an error or emits a completed
event

More importantly, an `observable` won’t send events until it has a subscriber.
Remember that an `observable` is really a `sequence` definition; subscribing to an
`observable` is really more like calling `next()` on an `Iterator` in the Swift
standard library:

## subject
`subject` is emits an `event` with a value attached to it.

### BehaviorSubject
you immediately start receiving the previous event and then all the subsequent
ones

### PublishSubject
you start receiving events after you have subscribed, chronologically after you
have started subscribing

### ReplaySubject
you say how many of the past ones you want, and then you get all the ones after
it

### Variable
is not an `Observer` but you can directly get its value. opposed to other types
where you can only get the values by subscriber
