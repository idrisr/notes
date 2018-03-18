# `indirect` in `enum`

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


## Recursive / Indirect Types

from [here](https://appventure.me/2015/10/17/advanced-practical-enum-examples/#sec-2-4)

Indirect types are a new addition that came with Swift 2.0. They allow you to
define enums where the associated value of a case is the very same enum again.
As an example, consider that you want to define a file system representations
with files and folders containing files. If `File` and `Folder` were enum
cases, then the `Folder` case would need to have an array of `File` cases as
it's associated value. Since this is a recursive operation, the compiler has to
make special preparations for it. Quoting from the Swift documentation:

Enums and cases can be marked indirect, which causes the associated value for
the enum to be stored indirectly, allowing for recursive data structures to be
defined.

So to implement our `FileNode` enum, we'd have to write it like this:

```swift
enum FileNode {
  case File(name: String)
  indirect case Folder(name: String, files: [FileNode])
}
```

The indirect keyword tells the compiler to handle this enum case indirectly. You can also add the keyword for the whole enum. As an example imagine mapping a binary tree:

```swift
indirect enum Tree<Element: Comparable> {
    case Empty
    case Node(Tree<Element>,Element,Tree<Element>)
}
```

This is a very powerful feature that allows you to map complex relationships in a very clean way with an enum.
