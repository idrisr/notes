## Sequence

no guarantee on what happens if you iterate the `sequence` a second time.

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

## Collection

```swift
  protocol Collection
```

A sequence whose elements can be traversed multiple times, nondestructively, and accessed by indexed subscript.

## Sequence vs Collection

A `sequence` can be infinite, while a `collection` can not.

A `collection` makes the guarantee that if you iterate it again it'll return you the same stuff.

## Sequence vs Collection

Sequence have no guarantee of not being destroyed after iteration. A [collection](./collection.md) by definition is guaranteed to survive iteration.