# Sequence

    public protocol Sequence {

      /// A type representing the sequence's elements.
      associatedtype Element where Self.Element == Self.Iterator.Element

      /// A type that provides the sequence's iteration interface and
      /// encapsulates its iteration state.
      associatedtype Iterator : IteratorProtocol

      /// A type that represents a subsequence of some of the sequence's elements.
      associatedtype SubSequence
    }
