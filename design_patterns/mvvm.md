# MVVM

from [here](https://www.objc.io/issues/13-architecture/mvvm/)

![img](../images/mvvm.png)

A `view-model` is an object that does not include compile-time references to the
`views` or `controllers` but exposes properties that describe the presentation
values of the `views` (the values each view displays) by loading and transforming
the underlying model objects for the scene into a format that can be directly
set on `views`. The actual setting of values on `views` is handled by bindings which
take these presentation values and ensure they are set on the `views` whenever
they change.

---
* from -  Excerpt From: Chris Eidhof. “App Architecture.”

“Model-View-ViewModel (MVVM) is a pattern that aims to improve upon MVC by
moving all model-related tasks
* updating the model,
* observing it for changes,
* transforming model data for display,
* etc.)

out of the controller layer and into a new layer of objects, called view-models.

---
### Navigation
* coordinator is the delegate of view controllers, and
view controllers forward navigation actions directly to the coordinator.

or

* forward navigation actions to the view-model first, and then
have the coordinator observe the view-model for navigation events.

The latter
approach is useful if navigation events are dependent on the current view state
or model data. Moving the navigation events from the view controller to the
view-model allows for easier testing of this interplay. 
