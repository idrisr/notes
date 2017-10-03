# `ExpressibleByArrayLiteral`

```swift
protocol ExpressibleByArrayLiteral
```

A type that can be initialized using an array literal.

An array literal is a simple way of expressing a list of values. Simply
surround a comma-separated list of values, instances, or literals with square
brackets to create an array literal. You can use an array literal anywhere an
instance of an ExpressibleByArrayLiteral type is expected: as a value assigned
to a variable or constant, as a parameter to a method or initializer, or even
as the subject of a nonmutating operation like `map(_:)` or `filter(_:)`

Arrays, sets, and option sets all conform to ExpressibleByArrayLiteral, and your own custom types can as well.
