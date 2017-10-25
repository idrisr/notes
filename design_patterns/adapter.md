# Adapter Pattern

## The Adapter design pattern solves problems like
* How can a class be reused that does not have an interface that a client requires?
* How can classes that have incompatible interfaces work together?
* How can an alternative interface be provided for a class?

Often an (already existing) class can't be reused only because its interface doesn't conform to the interface clients require.

## The Adapter design pattern describes how to solve such problems:
* Define a separate Adapter class that converts the (incompatible) interface of a
class (Adaptee) into another interface (Target) clients require.
* Work through an Adapter to work with (reuse) classes that do not have the required interface.

## Definition

An adapter allows two incompatible interfaces to work together. This is the real-world definition for an adapter. Interfaces may be incompatible, but the inner functionality should suit the need. The Adapter design pattern allows otherwise incompatible classes to work together by converting the interface of one class into an interface expected by the clients.

## My Example
```swift
// target
protocol Streamable {
    func play()
    func pause()
}

// adaptee
class Guitar {
    func strum() {
        print("strumming so wonderously")
    }

    func stopStrum() {
        print("musics over. so sad")
    }
}

// adaptor
class GuitarStreamableAdapter: Streamable {
    let guitar: Guitar

    init(guitar: Guitar) {
        self.guitar = guitar
    }

    func play() {
        guitar.strum()
    }

    func pause() {
        guitar.stopStrum()
    }
```
