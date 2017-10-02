# Collection

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

Collections are used extensively throughout the standard library. In addition to Array, Dictionary, and Set, the four String views are all collections, as are CountableRange and UnsafeBufferPointer. Increasingly, we’re also seeing types outside the standard library adopt the Collection protocol. Two examples of types that gained a ton of new capabilities in this way are Data and IndexSet, both from Foundation.
