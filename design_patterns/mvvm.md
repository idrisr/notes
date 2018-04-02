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
