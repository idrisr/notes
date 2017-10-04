## UIStoryboardSegue

## `@IBDesignable`

when you subclass `UIView` and create your own custom view  mark it
`@IBDesignable` and then it'll render in Interface Builder, in ttheory.
sometimes it works like shit.

## `@IBInspectable`

You can also add the `@IBInspectable` attribute to properties with types
compatible with user defined runtime attributes. After you add your custom view
to Interface Builder, you can edit these properties in the inspector.

```swift
@IBDesignable
class MyCustomView: UIView {
    @IBInspectable var textColor: UIColor
    @IBInspectable var iconHeight: CGFloat
    // ...
}
```
