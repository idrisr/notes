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

## Collection

```swift
  protocol Collection
```

A sequence whose elements can be traversed multiple times, nondestructively,
and accessed by indexed subscript.

A collection is a stable sequence that can be traversed nondestructively
multiple times. In addition to linear traversal, a collection’s elements can
also be accessed via subscript with an index. Subscript indices are often
integers, as they are in arrays. But as we’ll see, indices can also be opaque
values (as in dictionaries or strings), which sometimes makes working with them
non-intuitive. A collection’s indices invariably form a finite range, with a
defined start and end. This means that unlike sequences, collections can’t be
infinite.

`collection` extends `sequence`

```swift
public protocol Collection : _Indexable, Sequence {
  associatedtype IndexDistance : SignedInteger = Int
  associatedtype Iterator : IteratorProtocol = IndexingIterator<Self>
  func makeIterator() -> Iterator
  associatedtype SubSequence : _IndexableBase, Sequence = Slice<Self>
  associatedtype Indices : _Indexable, Sequence = DefaultIndices<Self>
  ...
}
```



## Sequence vs Collection
