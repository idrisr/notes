# Toll-Free Bridging


## tl;dr

* `Core Foundation` is `C` Code
* `Cocoa`/(`Foundation`?) is `ObjC` Code

* Toll Free bridinging means the underlying memory for a `C struct` in `Core Foundation` can be read just as if it was an object in `ObjC`. Hence it's toll-free to bridge from `Core Foundation` to `Cocoa`.

* read [this](https://developer.apple.com/library/content/documentation/General/Conceptual/CocoaEncyclopedia/Toll-FreeBridgin/Toll-FreeBridgin.html)
* and [this](https://www.mikeash.com/pyblog/friday-qa-2010-01-22-toll-free-bridging-internals.html)

Although Core Foundation types behave like Cocoa objects at runtime (known as
toll-free bridging), they are not type compatible with `id` unless you use a
bridged cast. To assign the image of a layer, you actually need to do the
following:

```objc
layer.contents = (__bridge id)image.CGImage;
```


---
There are a number of data types in the Core Foundation framework and the
Foundation framework that can be used interchangeably. This capability, called
toll-free bridging, means that you can use the same data type as the parameter
to a Core Foundation function call or as the receiver of an Objective-C
message.

For example, `NSLocale` is interchangeable with its Core Foundation counterpart,
`CFLocale`. Therefore, in a method where you see an `NSLocale *` parameter, you
can pass a `CFLocaleRef`, and in a function where you see a `CFLocaleRef`
parameter, you can pass an `NSLocale` instance. You cast one type to the other
to suppress compiler warnings, as illustrated in the following example.

* but most visual properties of `UIView` really just manipulating equivalent properties of the underlying layer.
