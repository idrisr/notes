# Optional

```swift
public enum Optional<Wrapped> : ExpressibleByNilLiteral {

    case none
    case some(Wrapped)

    public init(_ some: Wrapped)
    public func map<U>(_ transform: (Wrapped) throws -> U) rethrows -> U?
    public func flatMap<U>(_ transform: (Wrapped) throws -> U?) rethrows -> U?
    public init(nilLiteral: ())
    public var unsafelyUnwrapped: Wrapped { get }
}

extension Optional : Encodable {
    public func encode(to encoder: Encoder) throws
}

extension Optional : Decodable {
    public init(from decoder: Decoder) throws
}

extension Optional : CustomDebugStringConvertible {
    public var debugDescription: String { get }
}

extension Optional : CustomReflectable {
    public var customMirror: Mirror { get }
}
```
