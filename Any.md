## The Weird Types

---
# Swift 3

## Any

Any can represent an instance of any type at all, including function types and optional types.


## AnyObject

AnyObject can represent an instance of any class type.

`protocol AnyObject`

The protocol to which all classes implicitly conform.

You use AnyObject when you need the flexibility of an untyped object or when you use bridged Objective-C methods and properties that return an untyped result. AnyObject can be used as the concrete type for an instance of any class, class type, or class-only protocol. For example:

## AnyClass
`typealias AnyClass = AnyObject.Type`

The protocol to which all class types implicitly conform.

You can use the AnyClass protocol as the concrete type for an instance of any class. When you do, all known `@objc` class methods and properties are available as implicitly unwrapped optional methods and properties, respectively. For example:

    class IntegerRef {
        @objc class func getDefaultValue() -> Int {
            return 42
        }
    }

    func getDefaultValue(_ c: AnyClass) -> Int? {
        return c.getDefaultValue?()
    }

## AnyObject

---
# Swift 4

differences?
