# `codable`

https://developer.apple.com/documentation/foundation/archives_and_serialization/encoding_and_decoding_custom_types

```swift
typealias Codable = Decodable & Encodable
```

The simplest way to make a type `codable` is to declare its properties using types
that are already `Codable`. These types include standard library types like
`String`, `Int`, and `Double`; and Foundation types like `Date`, `Data`, and `URL`. Any type
whose properties are `codable` automatically conforms to `Codable` just by declaring
that conformance.
