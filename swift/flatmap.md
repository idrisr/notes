# `flatMap`

[readme](http://sketchytech.blogspot.com/2015/06/swift-what-do-map-and-flatmap-really-do.html)

from [here](https://www.natashatherobot.com/swift-2-flatmap/)

Instead of thinking about nested arrays, think arrays of contained values.

It flattens the array by pulling the values out of the container and then  maps
over the array.

```swift
let arr1: [[Int]]    = [[], [2]]            // Container Type = array
let arr2: [Optional] = [.none, .some(2)]    // Container Type = Optional
```

These are pretty much the same.
