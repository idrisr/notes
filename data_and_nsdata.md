
from [here](https://www.quora.com/What-is-difference-between-NSData-and-Data-in-Swift)

basically it's an object-oriented wrapper around a byte buffer.

`NSData` and its mutable subclass `NSMutableData` provide data objects,
object-oriented wrappers for byte buffers where Data is mutable collection of
bytes.  `Data` is bridged to `NSData` and more of an extension of `NSData`. So where
as `NSData` provides 30 methods `Data` provides 130 methods.

# NSData

`NSData` and its mutable subclass `NSMutableData` provide data objects,
object-oriented wrappers for byte buffers. `Data` objects let simple allocated
buffers (that is, data with no embedded pointers) take on the behavior of
Foundation objects.

# Data

The Swift overlay to the Foundation framework provides the `Data` structure,
which bridges to the NSData class and its mutable subclass, `NSMutableData`. The
`Data` value type offers the same functionality as the `NSData` reference type, and
the two can be used interchangeably in Swift code that interacts with
Objective-C APIs. This behavior is similar to how Swift bridges standard
string, numeric, and collection types to their corresponding Foundation
classes.

For more information about value types, see Classes and Structures in The Swift
Programming Language (Swift 3.1) and Working with Cocoa Frameworks in Using
Swift with Cocoa and Objective-C (Swift 3.1).
