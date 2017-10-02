# `IndexingIterator`

A type that iterates over a collection using its indices.

The `IndexingIterator` type is the default iterator for any collection that
doesn't declare its own. It acts as an iterator by using a collection's indices
to step over each value in the collection. Most collections in the standard
library use `IndexingIterator` as their iterator.

By default, any custom collection type you create will inherit a `makeIterator()`
method that returns an `IndexingIterator` instance, making it unnecessary to
declare your own. When creating a custom collection type, add the minimal
requirements of the `Collection` protocol: starting and ending indices and a
subscript for accessing elements. With those elements defined, the inherited
`amakeIterator()` method satisfies the requirements of the `Sequence` protocol.
