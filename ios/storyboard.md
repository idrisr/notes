## UIStoryboardSegue

## `@IBDesignable`

when you subclass `UIView` and create your own custom view  mark it
`@IBDesignable` and then it'll render in Interface Builder, in ttheory.
sometimes it works like shit.

### `prepareForInterfaceBuilder()`
* Called when a designable object is created in Interface Builder.

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

## Crashes

There are crash reports generated when Interface Builder Cocoa Touch Tool
crashes. Theses are located in `~/Library/Logs/DiagnosticReports` and named
`IBDesignablesAgentCocoaTouch_*.crash`. In my case they contained a useful
stack-trace that identified the issue in my code.
