# Unsafe

from [here](https://www.raywenderlich.com/148569/unsafe-swift)

By default, Swift is memory safe, which means that it prevents direct access to memory and makes sure everything is initialized before you use it. The key phrase is "by default." Unsafe Swift lets you get directly at memory through pointers if you need to.

## mutable/immutable + raw/typed + buffer/nonbuffer
Unsafe Swift pointers use a very predictable naming scheme so that you know what the traits of the pointer are. Mutable or immutable, raw or typed, buffer style or not. In total there is a combination of eight of these.

Unsafe Swift pointers use a very predictable naming scheme so that you know what the traits of the pointer are. Mutable or immutable, raw or typed, buffer style or not. In total there is a combination of eight of these.

* mutable
  * you can write to it

* raw
  * points to a blob of bytes

* buffer
  * means that it works like a collection

generic `<T>` pointers are typed
