# Interface Builder ("IB")

interaction with IB happens entirely through the objc runtime.


## Error
```
# when a constraint isnt hooked up
this class is not key value coding-compliant for the key
```

---

## `prepareForInterfaceBuilder()`

Called when a designable object is created in Interface Builder.

When Interface Builder instantiates a class with the `IB_DESIGNABLE` attribute, it
calls this method to let the resulting object know that it was created at design
time. You can implement this method in your designable classes and use it to
configure their design-time appearance. For example, you might use the method to
configure a custom text control with a default string. The system does not call
this method; only Interface Builder calls it.

Interface Builder waits until all objects in a graph have been created and
initialized before calling this method. So if your object’s runtime
configuration relies on subviews or parent views, those objects should exist by
the time this method is called.

**Your implementation of this method must call super at some point so that parent
classes can perform their own custom setup.**
