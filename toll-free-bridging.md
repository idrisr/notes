# Toll-Free Bridging

* read [this](https://developer.apple.com/library/content/documentation/General/Conceptual/CocoaEncyclopedia/Toll-FreeBridgin/Toll-FreeBridgin.html)
* and [this](https://www.mikeash.com/pyblog/friday-qa-2010-01-22-toll-free-bridging-internals.html)

There are a number of data types in the Core Foundation framework and the
Foundation framework that can be used interchangeably. This capability, called
toll-free bridging, means that you can use the same data type as the parameter
to a Core Foundation function call or as the receiver of an Objective-C
message. For example, `NSLocale` is
interchangeable with its Core Foundation counterpart, `CFLocale`. Therefore, in a method where you see an `NSLocale *` parameter, you
can pass a `CFLocaleRef`, and in a function where you see a `CFLocaleRef`
parameter, you can pass an `NSLocale` instance. You cast one type to the other to
suppress compiler warnings, as illustrated in the following example.
