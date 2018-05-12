# xibs and `nib`s

* from [here](https://developer.apple.com/library/content/documentation/Cocoa/Conceptual/LoadingResources/Cocoa`nib`s/Cocoa`nib`s.html)

## files owner
tl;dr - the xib's controller object

One of the most important objects in a `nib` file is the `File’s Owner` object.
Unlike interface objects, the `File’s Owner` object is a placeholder object that
is not created when the `nib` file is loaded. Instead, you create this object in
your code and pass it to the `nib`-loading code.

The reason this object is so important is that it is the main link between your application code and the
contents of the `nib` file.

More specifically, it is the controller object that is responsible for the contents of the `nib` file.

In Xcode, you can create connections between the `File’s Owner` and the other
interface objects in your `nib` file. When you load the `nib` file, the `nib`-loading
code recreates these connections using the replacement object you specify. This
allows your object to reference objects in the `nib` file and receive messages
from the interface objects automatically.

## first responder
tl;dr - your hook into the Responder Chain

In a `nib` file, the First Responder is a placeholder object that represents the
first object in your application’s dynamically determined responder chain.
Because the responder chain of an application cannot be determined at design
time, the First Responder placeholder acts as a stand-in target for any action
messages that need to be directed at the application’s responder chain. Menu
items commonly target the First Responder placeholder. For example, the Minimize
menu item in the Window menu hides the frontmost window in an application, not
just a specific window, and the Copy menu item should copy the current
selection, not just the selection of a single control or view. Other objects in
your application can target the First Responder as well.

## `nib` object lifecycle

When you use the methods of `NSNib` or `NSBundle` to load and instantiate the
objects in a `nib` file, the underlying `nib`-loading code does the following:

1. It loads the contents of the `nib` file and any referenced resource files into memory:
1. In iOS, any object that conforms to the `NSCoding` protocol is initialized
using the `initWithCoder:` method. This includes all subclasses of `UIView` and
`UIViewController` whether they are part of the default Xcode library or custom
classes you define.
1. It reestablishes all connections (actions, outlets, and bindings) between
objects in the `nib` file. This includes connections to `File’s Owner` and other
placeholder objects. The approach for establishing connections differs depending
on the platform:
1. It sends an `awakeFromnib` message to the appropriate objects in the `nib` file that define the matching selector:
    * In iOS, this message is sent only to the interface objects that were instantiated by the `nib`-loading code. It is not sent to File’s Owner, First Responder, or any other placeholder objects.

## `xibs` and `nib`s
* `xib`s - `xml` `nib` files. non binary, less source control atrocious, what we use in xcode
* ``nib``s - compiled `xib`s, post compilation process, binary format

# Getting Xib into a view
```swift
# 1. load the nib from the bundle
let bundle = Bundle(for: type(of: self))
let nib = UINib(nibName: nibName(), bundle: bundle)
```

```swift
# 2. instantiate the nib and get it's view
let view = nib.instantiate(withOwner: self, options: nil)[0] as! UIView
```

```swift
# 3. add that view as a subview and constrain it to all sides
view.translatesAutoresizingMaskIntoConstraints = false
addSubview(view)
view.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
view.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
view.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
view.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
```

## interesting runtime stuff

```swift
# on an error where a storyboard reference is not found
2   UIKit                               +[UIStoryboard storyboardWithName:bundle:] + 672
3   UIKit                               -[UIStoryboard instantiateViewControllerReferencedByPlaceholderWithIdentifier:] + 87
4   UIKit                               -[UIStoryboardViewControllerPlaceholder initWithCoder:] + 143
5   UIKit                               UINibDecoderDecodeObjectForValue + 704
6   UIKit                               -[UINibDecoder decodeObjectForKey:] + 89
7   UIKit                               -[UIRuntimeConnection initWithCoder:] + 178
8   UIKit                               UINibDecoderDecodeObjectForValue + 704
9   UIKit                               UINibDecoderDecodeObjectForValue + 1118
10  UIKit                               -[UINibDecoder decodeObjectForKey:] + 89
11  UIKit                               -[UINib instantiateWithOwner:options:] + 1262
```
