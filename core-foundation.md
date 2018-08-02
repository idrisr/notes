# Core Foundation

## `CFGetTypeID`
Returns the unique identifier of an opaque type to which a Core Foundation object belongs.


## `CFTypeID`
```swift
typealias CFTypeID = UInt
```
Defines a type identifier in Core Foundation. A type ID is an integer that
identifies the opaque type to which a Core Foundation object “belongs.” You use
type IDs in various contexts, such as when you are operating on heterogeneous
collections. Core Foundation provides programmatic interfaces for obtaining and
evaluating type IDs.

Because the value for a type ID can change from release to release, your code
should not rely on stored or hard-coded type IDs nor should it hard-code any
observed properties of a type ID (such as, for example, it being a small
integer).


## `CFAllocator`
## `CFArray`
## `CFAttributedString`
## `CFBag`
## `CFBinaryHeap`
## `CFBitVector`
## `CFBoolean`
## `CFBundle`
## `CFCalendar`
## `CFCharacterSet`
## `CFData`
## `CFDate`
## `CFDateFormatter`
## `CFDictionary`
## `CFError`
## `CFFileDescriptor`
## `CFLocale`
## `CFMachPort`
## `CFMessagePort`
## `CFMutableArray`
## `CFMutableAttributedString`
## `CFMutableBag`
## `CFMutableBitVector`
## `CFMutableCharacterSet`
## `CFMutableData`
## `CFMutableDictionary`
## `CFMutableSet`
## `CFMutableString`
## `CFNotificationCenter`
## `CFNull`
## `CFNumber`
## `CFNumberFormatter`
## `CFPlugIn`
## `CFPlugInInstance`
## `CFPropertyList`
## `CFReadStream`
## `CFRunLoop`
## `CFRunLoopObserver`
## `CFRunLoopSource`
## `CFRunLoopTimer`
## `CFSet`
## `CFSocket`
## `CFString`
## `CFStringTokenizer`
## `CFTimeZone`
## `CFTree`
## `CFType`
## `CFURL`
## `CFUserNotification`
## `CFUUID`
## `CFWriteStream`
## `CFXMLNode`
## `CFXMLParser`
## `CFXMLTree`
