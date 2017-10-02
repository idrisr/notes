# `@autoclosure`

from this [post](https://www.swiftbysundell.com/posts/using-autoclosure-when-designing-swift-apis)

Swift’s `@autoclosure` attribute enables you to define an argument that automatically gets wrapped in a closure. It’s primarily used to defer execution of a (potentially expensive) expression to when it’s actually needed, rather than doing it directly when the argument is passed.

One example of when this is used in the Swift standard library is the `assert` function. Since asserts are only triggered in debug builds, there’s no need to evaluate the expression that is being asserted in a release build. This is where `@autoclosure` comes in:


## Example

```swift
  UIView.animate(withDuration: 0.25) {
      view.frame.origin.y = 100
  }
```

With `@autoclosure`, we could write an animate function that automatically creates an animation closure and executes it, like this:

```swift
  func animate(_ animation: @autoclosure(escaping) () -> Void,
               duration: TimeInterval = 0.25) {
      UIView.animate(withDuration: duration, animations: animation)
  }
```
Now, we can simply perform our animation with a simple function call without any extra {} syntax:

```swift
animate(view.frame.origin.y = 100)
```
