# String

A `string` is not itself a `collection`. Instead, it has properties that present its
contents as meaningful collections. Each of these collections is a particular
type of view of the string's visible and data representation.

## views

### character view

### unicode scalar view

### utf-16 view

### utf-8 view

# Substring

When you create a slice of a string, a `Substring` instance is the result.
Operating on substrings is fast and efficient because a substring shares its
storage with the original string. The `Substring` type presents the same
interface as `String`, so you can avoid or defer any copying of the string’s
contents.

# Stringy protocols

## `CustomStringConvertible`
```swift
public protocol CustomStringConvertible {
  public var description: String { get }
}

struct Point: CustomStringConvertible {
  let x: Int, y: Int

  var description: String {
    return "(\(x), \(y))"
  }
}

let p = Point(x: 21, y: 30)
let s = String(describing: p)
print(s)
// Prints "(21, 30)"
```

## `CustomDebugStringConvertible`
```swift
extension Point: CustomDebugStringConvertible {
  var debugDescription: String {
    return "Point(x: \(x), y: \(y))"
  }
}

print(String(reflecting: p))
// Prints "Point(x: 21, y: 30)"
```

# objcio talk #78
