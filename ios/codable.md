# `Codable`

* from [Swift Evolution](https://github.com/apple/swift-evolution/blob/master/proposals/0166-swift-archival-serialization.md)
* from [this](https://hackernoon.com/everything-about-codable-in-swift-4-97d0e18a2999) tutorial
* [readme](https://benscheirman.com/2017/06/swift-json/)
* [readme, seriously ](https://swiftunboxed.com/stdlib/json-decoder-decodable/)
* [code example 2](https://github.com/nsscreencast/279-advanced-swift-4-json)
* [code example 1](https://github.com/nsscreencast/278-swift-4-json-parsing)
* [playground expamle](https://developer.apple.com/documentation/foundation/archives_and_serialization/using_json_with_custom_types)

## DUH, ahah moment

json:

key: value

swift:
let key: Value

trying to capture the key into a var or constant was the issue!


## Protocols in play
```swift
public protocol Encoder
public protocol CodingKey
public protocol Encodable
public protocol Decodable
public typealias Codable = Encodable & Decodable
```

## `Container`
A container can be one of a few different types:

### `Keyed Container`
provides values by keys. This is essentially a dictionary.
### `Unkeyed Container`
this provides ordered values without keys. In the `JSONEncoder`, this means an array.
### `Single Value Container`
this outputs the raw value without any kind of containing element.

## `CodingKey`
```swift
/// Conformance to `CodingKey` indicates that a type can be used as a key for encoding and decoding.
public protocol CodingKey {
    var stringValue: String { get }
    init?(stringValue: String)
    var intValue: Int? { get }
    init?(intValue: Int)
}
```

## `Encodable`
from `object` -> `representation`

```swift
/// Conformance to `Encodable` indicates that a type can encode itself to an external representation.
public protocol Encodable {
    func encode(to encoder: Encoder) throws
}
```

## `Decodable`
from `representation` -> `object`

```swift
/// Conformance to `Decodable` indicates that a type can decode itself from an external representation.
public protocol Decodable {
    init(from decoder: Decoder) throws
}
```

## `Encoder`
```swift
/// An `Encoder` is a type which can encode values into a native format for external representation.
public protocol Encoder {
    func container<Key : CodingKey>(keyedBy type: Key.Type) -> KeyedEncodingContainer<Key>
    func unkeyedContainer() -> UnkeyedEncodingContainer
    func singleValueContainer() -> SingleValueEncodingContainer
    var codingPath: [CodingKey?] { get }
}
```

## `Decoder`
```swift
/// A `Decoder` is a type which can decode values from a native format into in-memory representations.
public protocol Decoder {
    func container<Key : CodingKey>(keyedBy type: Key.Type) throws -> KeyedDecodingContainer<Key>
    func unkeyedContainer() throws -> UnkeyedDecodingContainer
    func singleValueContainer() throws -> SingleValueDecodingContainer
    var codingPath: [CodingKey?] { get }
}
```
