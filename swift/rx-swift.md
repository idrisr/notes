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
