# Split View Controller
The split view controller determines the arrangement of its child view
controllers based on the available space.

In a horizontally regular environment, the split view controller presents its
view controllers side-by-side whenever possible.

In a horizontally compact environment, the split view controller acts more like
a navigation controller, displaying the primary view controller initially and
pushing or popping the secondary view controller as needed.

You can also ask the split view controller to prefer a specific arrangement by
assigning a value to the preferredDisplayMode property.

```swift
var viewControllers: [UIViewController] { get set }
```
Discussion

## Master - Detail View Controllers
* When the split view interface is expanded,
  * this property contains two view controllers;
* when it is collapsed,
  * this property contains only one view controller.

* The first view controller in the array is always the primary (or master) view controller.
* If a second view controller is present, that view controller is the secondary (or detail) view controller.

* NOTE - embedding child vc's in navs make them act differently. try it. smh
