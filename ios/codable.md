# `Codable`

* from [Swift Evolution](https://github.com/apple/swift-evolution/blob/master/proposals/0166-swift-archival-serialization.md)
* from [this](https://hackernoon.com/everything-about-codable-in-swift-4-97d0e18a2999) tutorial
* apples [docs](https://developer.apple.com/documentation/foundation/archives_and_serialization/encoding_and_decoding_custom_types)
* [readme](https://benscheirman.com/2017/06/swift-json/)
* [readme, seriously ](https://swiftunboxed.com/stdlib/json-decoder-decodable/)
* [code example 2](https://github.com/nsscreencast/279-advanced-swift-4-json)
* [code example 1](https://github.com/nsscreencast/278-swift-4-json-parsing)
* [playground expamle](https://developer.apple.com/documentation/foundation/archives_and_serialization/using_json_with_custom_types)

## DUH, ahah moment

```
# json
key: value
```

```
# swift
let key: Value
```

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
* one yet bizarre thing is that you have access to all the member vars in the `encode` func
  * it's cause the object already exists. now you're taking the instantiated object and creating something with it
* a view into the storage of the encoder that you can access with keys.
* nested container - like reaching down the json
* A container can be one of a few different types:
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

## `KeyedDecodingContainerProtocol`
```swift
public protocol KeyedDecodingContainerProtocol {

    associatedtype Key : CodingKey

    /// The path of coding keys taken to get to this point in decoding.
    public var codingPath: [CodingKey] { get }
    public var allKeys: [Self.Key] { get }
    public func contains(_ key: Self.Key) -> Bool
    public func decodeNil(forKey key: Self.Key) throws -> Bool
    public func decode(_ type: Bool.Type, forKey key: Self.Key) throws -> Bool
    public func decode(_ type: Int.Type, forKey key: Self.Key) throws -> Int
    public func decode(_ type: Int8.Type, forKey key: Self.Key) throws -> Int8
    public func decode(_ type: Int16.Type, forKey key: Self.Key) throws -> Int16
    public func decode(_ type: Int32.Type, forKey key: Self.Key) throws -> Int32
    public func decode(_ type: Int64.Type, forKey key: Self.Key) throws -> Int64
    public func decode(_ type: UInt.Type, forKey key: Self.Key) throws -> UInt
    public func decode(_ type: UInt8.Type, forKey key: Self.Key) throws -> UInt8
    public func decode(_ type: UInt16.Type, forKey key: Self.Key) throws -> UInt16
    public func decode(_ type: UInt32.Type, forKey key: Self.Key) throws -> UInt32
    public func decode(_ type: UInt64.Type, forKey key: Self.Key) throws -> UInt64
    public func decode(_ type: Float.Type, forKey key: Self.Key) throws -> Float
    public func decode(_ type: Double.Type, forKey key: Self.Key) throws -> Double
    public func decode(_ type: String.Type, forKey key: Self.Key) throws -> String
    public func decode<T>(_ type: T.Type, forKey key: Self.Key) throws -> T where T : Decodable
    public func decodeIfPresent(_ type: Bool.Type, forKey key: Self.Key) throws -> Bool?
    public func decodeIfPresent(_ type: Int.Type, forKey key: Self.Key) throws -> Int?
    public func decodeIfPresent(_ type: Int8.Type, forKey key: Self.Key) throws -> Int8?
    public func decodeIfPresent(_ type: Int16.Type, forKey key: Self.Key) throws -> Int16?
    public func decodeIfPresent(_ type: Int32.Type, forKey key: Self.Key) throws -> Int32?
    public func decodeIfPresent(_ type: Int64.Type, forKey key: Self.Key) throws -> Int64?
    public func decodeIfPresent(_ type: UInt.Type, forKey key: Self.Key) throws -> UInt?
    public func decodeIfPresent(_ type: UInt8.Type, forKey key: Self.Key) throws -> UInt8?
    public func decodeIfPresent(_ type: UInt16.Type, forKey key: Self.Key) throws -> UInt16?
    public func decodeIfPresent(_ type: UInt32.Type, forKey key: Self.Key) throws -> UInt32?
    public func decodeIfPresent(_ type: UInt64.Type, forKey key: Self.Key) throws -> UInt64?
    public func decodeIfPresent(_ type: Float.Type, forKey key: Self.Key) throws -> Float?
    public func decodeIfPresent(_ type: Double.Type, forKey key: Self.Key) throws -> Double?
    public func decodeIfPresent(_ type: String.Type, forKey key: Self.Key) throws -> String?
    public func decodeIfPresent<T>(_ type: T.Type, forKey key: Self.Key) throws -> T? where T : Decodable
    public func nestedContainer<NestedKey>(keyedBy type: NestedKey.Type, forKey key: Self.Key) throws -> KeyedDecodingContainer<NestedKey> where NestedKey : CodingKey
    public func nestedUnkeyedContainer(forKey key: Self.Key) throws -> UnkeyedDecodingContainer
    public func superDecoder() throws -> Decoder
    public func superDecoder(forKey key: Self.Key) throws -> Decoder
}
```

## `KeyedEncodingContainer`
```swift
public struct KeyedEncodingContainer<K> : KeyedEncodingContainerProtocol where K : CodingKey {
    public typealias Key = K
    public init<Container>(_ container: Container) where K == Container.Key, Container : KeyedEncodingContainerProtocol
    public var codingPath: [CodingKey] { get }
    public mutating func encodeNil(forKey key: KeyedEncodingContainer.Key) throws
    public mutating func encode(_ value: Bool, forKey key: KeyedEncodingContainer.Key) throws
    public mutating func encode(_ value: Int, forKey key: KeyedEncodingContainer.Key) throws
    public mutating func encode(_ value: Int8, forKey key: KeyedEncodingContainer.Key) throws
    public mutating func encode(_ value: Int16, forKey key: KeyedEncodingContainer.Key) throws
    public mutating func encode(_ value: Int32, forKey key: KeyedEncodingContainer.Key) throws
    public mutating func encode(_ value: Int64, forKey key: KeyedEncodingContainer.Key) throws
    public mutating func encode(_ value: UInt, forKey key: KeyedEncodingContainer.Key) throws
    public mutating func encode(_ value: UInt8, forKey key: KeyedEncodingContainer.Key) throws
    public mutating func encode(_ value: UInt16, forKey key: KeyedEncodingContainer.Key) throws
    public mutating func encode(_ value: UInt32, forKey key: KeyedEncodingContainer.Key) throws
    public mutating func encode(_ value: UInt64, forKey key: KeyedEncodingContainer.Key) throws
    public mutating func encode(_ value: Float, forKey key: KeyedEncodingContainer.Key) throws
    public mutating func encode(_ value: Double, forKey key: KeyedEncodingContainer.Key) throws
    public mutating func encode(_ value: String, forKey key: KeyedEncodingContainer.Key) throws
    public mutating func encode<T>(_ value: T, forKey key: KeyedEncodingContainer.Key) throws where T : Encodable
    public mutating func encodeConditional<T>(_ object: T, forKey key: KeyedEncodingContainer.Key) throws where T : AnyObject, T : Encodable
    public mutating func encodeIfPresent(_ value: Bool?, forKey key: KeyedEncodingContainer.Key) throws
    public mutating func encodeIfPresent(_ value: Int?, forKey key: KeyedEncodingContainer.Key) throws
    public mutating func encodeIfPresent(_ value: Int8?, forKey key: KeyedEncodingContainer.Key) throws
    public mutating func encodeIfPresent(_ value: Int16?, forKey key: KeyedEncodingContainer.Key) throws
    public mutating func encodeIfPresent(_ value: Int32?, forKey key: KeyedEncodingContainer.Key) throws
    public mutating func encodeIfPresent(_ value: Int64?, forKey key: KeyedEncodingContainer.Key) throws
    public mutating func encodeIfPresent(_ value: UInt?, forKey key: KeyedEncodingContainer.Key) throws
    public mutating func encodeIfPresent(_ value: UInt8?, forKey key: KeyedEncodingContainer.Key) throws
    public mutating func encodeIfPresent(_ value: UInt16?, forKey key: KeyedEncodingContainer.Key) throws
    public mutating func encodeIfPresent(_ value: UInt32?, forKey key: KeyedEncodingContainer.Key) throws
    public mutating func encodeIfPresent(_ value: UInt64?, forKey key: KeyedEncodingContainer.Key) throws
    public mutating func encodeIfPresent(_ value: Float?, forKey key: KeyedEncodingContainer.Key) throws
    public mutating func encodeIfPresent(_ value: Double?, forKey key: KeyedEncodingContainer.Key) throws
    public mutating func encodeIfPresent(_ value: String?, forKey key: KeyedEncodingContainer.Key) throws
    public mutating func encodeIfPresent<T>(_ value: T?, forKey key: KeyedEncodingContainer.Key) throws where T : Encodable
    public mutating func nestedContainer<NestedKey>(keyedBy keyType: NestedKey.Type, forKey key: KeyedEncodingContainer.Key) -> KeyedEncodingContainer<NestedKey> where NestedKey : CodingKey
    public mutating func nestedUnkeyedContainer(forKey key: KeyedEncodingContainer.Key) -> UnkeyedEncodingContainer
    public mutating func superEncoder() -> Encoder
    public mutating func superEncoder(forKey key: KeyedEncodingContainer.Key) -> Encoder
    public mutating func encodeConditional<T>(_ object: T, forKey key: K) throws where T : AnyObject, T : Encodable
    public mutating func encodeIfPresent(_ value: Bool?, forKey key: K) throws
    public mutating func encodeIfPresent(_ value: Int?, forKey key: K) throws
    public mutating func encodeIfPresent(_ value: Int8?, forKey key: K) throws
    public mutating func encodeIfPresent(_ value: Int16?, forKey key: K) throws
    public mutating func encodeIfPresent(_ value: Int32?, forKey key: K) throws
    public mutating func encodeIfPresent(_ value: Int64?, forKey key: K) throws
    public mutating func encodeIfPresent(_ value: UInt?, forKey key: K) throws
    public mutating func encodeIfPresent(_ value: UInt8?, forKey key: K) throws
    public mutating func encodeIfPresent(_ value: UInt16?, forKey key: K) throws
    public mutating func encodeIfPresent(_ value: UInt32?, forKey key: K) throws
    public mutating func encodeIfPresent(_ value: UInt64?, forKey key: K) throws
    public mutating func encodeIfPresent(_ value: Float?, forKey key: K) throws
    public mutating func encodeIfPresent(_ value: Double?, forKey key: K) throws
    public mutating func encodeIfPresent(_ value: String?, forKey key: K) throws
    public mutating func encodeIfPresent<T>(_ value: T?, forKey key: K) throws where T : Encodable
}
```

# Errors
```swift
public enum DecodingError : Error {
    public struct Context {
        public let codingPath: [CodingKey]
        public let debugDescription: String
        public let underlyingError: Error?
        public init(codingPath: [CodingKey], debugDescription: String, underlyingError: Error? = default)
    }

    case typeMismatch(Any.Type, DecodingError.Context)
    case valueNotFound(Any.Type, DecodingError.Context)
    case keyNotFound(CodingKey, DecodingError.Context)
    case dataCorrupted(DecodingError.Context)
    public static func dataCorruptedError<C>(forKey key: C.Key, in container: C, debugDescription: String) -> DecodingError where C : KeyedDecodingContainerProtocol
    public static func dataCorruptedError(in container: UnkeyedDecodingContainer, debugDescription: String) -> DecodingError
    public static func dataCorruptedError(in container: SingleValueDecodingContainer, debugDescription: String) -> DecodingError
}
```
