# RawRepresentable

A type that can be converted to and from an associated raw value.

It is most commonly seen in enumerations, and the swift compiler automatically
adds `RawRepresentable` conformance to `enum` of type `Int, String, and Float`.

The definition for `RawRepresentable` is as follows:

```swift
protocol RawRepresentable {
	associatedtype RawValue

	public init?(rawValue: Self.rawValue) {
	}

	public var rawValue: Self.RawValue { get }
}
```


This is useful if you want to encode types, for example to use
