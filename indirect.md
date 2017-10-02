# Indirect in Enum

```swift
		/// A simple linked list enum
		enum List<Element> {
			case end
			indirect case node(Element, next: List<Element>)
		}
```

The use of the `indirect` keyword here indicates that the compiler should
represent this value as a reference. Swift enums are value types. This means
they hold their values directly in the variable, rather than the variable
holding a reference to the location of the value. This has many benefits, as
we’ll see in the structs and classes chapter, but it also means they can’t
contain a reference to themselves. The `indirect` keyword allows an enum case to
be held as a reference and thus hold a reference to itself.
