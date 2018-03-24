# Swift 4

[read me](https://medium.com/widgetlabs-engineering/from-swift-3-to-4-b094597b889b)

## `@objc` inference

from https://github.com/apple/swift-evolution/blob/master/proposals/0160-objc-inference.md

Before Swift 4, the compiler made some Swift declarations automatically
available to Objective-C. For example, if one subclassed from `NSObject`, the
compiler created Objective-C entry points for all methods in such classes. The
mechanism is called `@objc` inference.

In Swift 4, such automatic `@objc` inference is deprecated because it is costly to
generate all those Objective-C entry points. When `Swift 3 @objc Inference`
setting is set to "On", it allows the old code to work. However, it will show
deprecation warnings that need to be addressed. It is recommended to "fix" these
warnings and switch the setting to "Default", which is the default for new Swift
projects.

### Minimize Inference
static inference

### Match Swift 3 Behavior

## dynamic and objc

`dynamic` no longer infers `@objc`

This change is intended to separate current implementation limitations from
future language evolution: the current implementation supports `dynamic` by always
using the Objective-C message send mechanism, allowing replacement of dynamic
implementations via the Objective-C runtime (e.g., `class_addMethod` and
`class_replaceMethod`). In the future, it is plausible that the Swift language and
runtime will evolve to support `dynamic` without relying on the Objective-C
runtime, and it's important that we leave the door open for that language
evolution.

`@objcMembers`

`@discardableResult`
no warnings if you dont use the result from a `func` that `return`s

## `NSAttributedString` Attributes
The `NSAttributeName` constants who used to be global `String` constants are now
grouped within their own type `NSAttributedStringKey`.
