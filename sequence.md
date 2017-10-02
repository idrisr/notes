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

      /// Returns an iterator over the elements of this sequence.
      public func makeIterator() -> Self.Iterator
  }
```

## IteratorProtocol

```swift
  public protocol IteratorProtocol {
      associatedtype Element
      public mutating func next() -> Self.Element?
  }
```
## Sequence vs Collection

Sequence have no guarantee of not being destroyed after iteration. A [collection](./collection.md) by definition is guaranteed to survive iteration.
