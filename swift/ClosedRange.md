# ClosedRange

```swift
public struct ClosedRange<Bound> where Bound : Comparable
```

```swift
public protocol Comparable : Equatable {
    public static func <(lhs: Self, rhs: Self) -> Bool
    public static func <=(lhs: Self, rhs: Self) -> Bool
    public static func >=(lhs: Self, rhs: Self) -> Bool
    public static func >(lhs: Self, rhs: Self) -> Bool
}
```

```swift
public protocol Equatable {
    public static func ==(lhs: Self, rhs: Self) -> Bool
}
```
