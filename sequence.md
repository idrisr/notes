## Sequence

```swift
  public protocol Sequence {

      /// A type representing the sequence's elements.
      associatedtype Element where Self.Element == Self.Iterator.Element

      /// A type that provides the sequence's iteration interface and
      /// encapsulates its iteration state.
      associatedtype Iterator : IteratorProtocol

      /// A type that represents a subsequence of some of the sequence's elements.
      associatedtype SubSequence

      makeIterator?
  }
```

## IteratorProtocol

```swift
  public protocol IteratorProtocol {
      associatedtype Element
      public mutating func next() -> Self.Element?
  }
```

## Collection

```swift
  protocol Collection
```

A sequence whose elements can be traversed multiple times, nondestructively, and accessed by indexed subscript.



## Sequence vs Collection
