# `Quick` + `Nimble`

`Nimble.Predicate`

`Nimble.Expression`

`Nimble.FailureMessage`

`Matcher`
```swift
public protocol Matcher {

    associatedtype ValueType

    public func matches(_ actualExpression: Nimble.Expression<Self.ValueType>, 
                            failureMessage: Nimble.FailureMessage) throws -> Bool

    public func doesNotMatch(_ actualExpression: Nimble.Expression<Self.ValueType>, 
                                 failureMessage: Nimble.FailureMessage) throws -> Bool
}
```

`NMBComparable`