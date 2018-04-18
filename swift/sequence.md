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

## Equivalent Code
```swift
for maybeInt in maybeInts {
  // maybeInt is an Int?
  // Two numbers and a `nil`
}
```
Now consider that the implementation of `for...in` is shorthand for the `while` loop
technique above. What’s returned from `iterator.next()` would be an
`Optional<Optional<Int>>` — or `Int??` — because `next` wraps each element in the
sequence inside an optional. The `while let` unwraps it to check it isn’t `nil`, and
while it’s non-nil, binds the unwrapped value and runs the body:

```swift
var iterator = maybeInts.makeIterator()
while let maybeInt = iterator.next() {
  print(maybeInt, terminator: " ")
}
```
