  # Collection

* [watchme](https://academy.realm.io/posts/try-swift-soroush-khanlou-sequence-collection/)
* [realm collection](https://realm.io/docs/swift/latest/#collections)

```swift
  protocol Collection
```

[readme](https://developer.apple.com/documentation/swift/collection)

A `sequence` whose elements can be traversed multiple times, nondestructively,
and accessed by indexed subscript.

A `collection` is a stable `sequence` that can be traversed nondestructively
multiple times. In addition to linear traversal, a `collection`’s elements can
also be accessed via subscript with an index. Subscript indices are often
integers, as they are in arrays. But as we’ll see, indices can also be opaque
values (as in dictionaries or strings), which sometimes makes working with them
non-intuitive. A `collection`’s indices invariably form a finite range, with a
defined start and end. This means that unlike `sequence`s, `collection`s can’t be
infinite.

`collection` extends `sequence`

```swift
public protocol Collection : _Indexable, Sequence {
  // notice how the associatetype's have default values
  associatedtype IndexDistance : SignedInteger = Int
  associatedtype Iterator : IteratorProtocol = IndexingIterator<Self>
  func makeIterator() -> Iterator
  associatedtype SubSequence : _IndexableBase, Sequence = Slice<Self>
  associatedtype Indices : _Indexable, Sequence = DefaultIndices<Self>
  ...
}
```

`collection`s are used extensively throughout the standard library. In addition to
`Array`, `Dictionary`, and `Set`, the four `String` views are all `collection`s, as are
`CountableRange` and `UnsafeBufferPointer`. Increasingly, we’re also seeing types
outside the standard library adopt the `Collection` protocol. Two examples of
types that gained a ton of new capabilities in this way are `Data` and `IndexSet`,
both from Foundation.

# BiDirectionalCollection
see git@bitbucket.org:idrisr/bidirectional-fun.git

# Array
* many functions on array return an arrayslice
* optimization to not copy array


# ArraySlice
