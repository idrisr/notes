# RunLoop

* [readme](https://developer.apple.com/library/content/documentation/Cocoa/Conceptual/Multithreading/RunLoopManagement/RunLoopManagement.html)

* [readme](https://izeeshan.wordpress.com/2014/07/22/nsrunloop-understanding/)

* [readme](http://bou.io/RunRunLoopRun.html)

`RunLoop`

A `RunLoop` object processes input for sources such as mouse and keyboard events
from the window system, `Port` objects, and `NSConnection` objects. A `RunLoop` object
also processes `Timer` events.

Your application neither creates or explicitly manages `RunLoop` objects. Each
`Thread` object—including the application’s main thread—has an `RunLoop` object
automatically created for it as needed. If you need to access the current
thread’s run loop, you do so with the class method `current`.

Note that from the perspective of `RunLoop`, `Timer` objects are not "input"—they
are a special type, and one of the things that means is that they do not cause
the run loop to return when they fire.

```swift
RunLoop.current.add(self.idleTimer!, forMode: RunLoopMode.commonModes)
```
