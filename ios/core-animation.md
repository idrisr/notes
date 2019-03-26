# Core Animation

* happens on the GPU, not the CPU

[readme](https://academy.realm.io/posts/tryswift-tim-oliver-advanced-graphics-with-core-animation/)

## Presentation Vs Model
When you change a property of a layer, the property value is actually updated immediately (if you try to read it, you’ll find that the value is whatever you just set it to), but that change is not reflected onscreen. That’s because the property you set doesn’t adjust the appearance of the layer directly; instead, it defines the appearance that the layer is going to have when that property’s animation has completed.

### display value
* in presentation layer
```objc
[myLayer presentationLayer]
```

### post animation value
* in model layer
```objc
[myLayer modelLayer]
```

## Layer Tree

* `CALayer`
* conceptually similar to `UIView`
* `UIView` does user interaction
* `CALayer` does the rest, like rendering and geometry math
* `UIView` gives the iOS specific funcationality such as touch handling and high level interfaces for Core Animation's low level fucntionality
* the common shared stuff between MacOS and iOS

### Features in layer not in view
* drop shadows, rounded corners, colored borders
* 3d transforms and positioning
* non rectangular bounds
* alpha masking of content
* multistep, nonlinear animations

## `CALayer`

## `CGImage`

## `CGImageRef`
* pointer to a `CGImage` struct

## `-drawRect:`

the `CALayer` calls its `delegate` to handle drawing in its context. When a
`UIView` is created, it sets itself as its `CALayer`s delegate.

The `-drawRect:` method is executed automatically when the view first appears
onscreen. The code inside `-drawRect:` method uses Core Graphics to draw into the
backing image, and the result will then be cached until the view needs to update
it (usually because the developer has called the `-setNeedsDisplay` method,
although some view types will be redrawn automatically whenever a property that
affects their appearance is changed [such as `bounds`]). Although `-drawRect:` is a
`UIView` method, it’s actually the underlying `CALayer` that schedules the drawing
and stores the resultant image.

## Geometry

* `UIView` has three primary layout properties: `frame`, `bounds`, and `center`.
* `CALayer` has equivalents called frame, bounds, and position.

Why they used “position” for layers and “center” for views will become clear, but they both represent the same value.

* The frame represents the outer coordinates of the layer (that is, the space it occupies within its superlayer),
* the bounds property represents the inner coordinates (with {0, 0} typically equating to the top-left corner of the layer, although this is not always the case), and
* the center and position both represent the location of the anchorPoint relative to the superlayer.

The
anchorPoint property is explained later, but for now just think of it as the
center of the layer. Figure 3.1 shows how these properties relate to one
another. The view’s frame, bounds, and center properties are actually just
accessors (setter and getter methods) for the underlying layer equivalents.

When you manipulate the view frame, you are really changing the frame of the
underlying `CALayer`. You cannot change the view’s frame independently of its
layer.

### Depth
Note that there is no depth property to complement the bounds width and height  .
Layers are fundamentally flat objects. You can think of them as being a bit like
stiff sheets of paper that are individually two-dimensional but that can be
glued together to form hollow, origami-like 3D structures.

### User Interaction
`CALayer` does not have any knowledge of the responder chain, so it cannot deal
with touch events or gestures directly. It does have a couple of methods to help
you to implement touch handling yourself, however: `-containsPoint:` and
`-hitTest:`.

### `CATransaction`
* A mechanism for grouping multiple layer-tree operations into atomic updates to the render tree.
* manages a stack of transactions, without giving you direct access to them.
* use `+begin` and `+commit` to push a new transaction onto the stack or pop the current one
* Core Animation automatically begins a new transaction with each iteration of the run loop.


When you change a property, how does Core Animation determine the type and
duration of the animation that it will perform?

* The duration of the animation is specified by the settings for the current transaction,
* and the animation type is controlled by layer actions.

### `CATransformLayer`
* the layer backing a `UIStackView`
* `CATransformLayer` objects are used to create true 3D layer hierarchies,
rather than the flattened hierarchy rendering model used by other `CALayer`
classes.

...and they're used in `UIStackView`s under the hood. How does the above
description relate to stack views??


## `CAKeyframeAnimation`

## `CABasicAnimation`

## `CAAnimation`

`CAAnimation` provides the basic support for the `CAMediaTiming` and `CAAction`
protocols. You do not create instance of `CAAnimation`: to animate Core Animation
layers or SceneKit objects, create instances of the concrete subclasses
`CABasicAnimation`, `CAKeyframeAnimation`, `CAAnimationGroup`, or `CATransition`.
