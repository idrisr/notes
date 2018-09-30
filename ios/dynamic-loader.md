# Dynamic Loader

[apple doc](https://developer.apple.com/library/archive/documentation/DeveloperTools/Conceptual/DynamicLibraries/100-Articles/DynamicLibraryDesignGuidelines.html#//apple_ref/doc/uid/TP40002013-SW19)

```
# dynamic loader
/usr/lib/dyld
```

A dynamic framework is a bundle of code loaded into an executable at runtime,
instead of at compile time. Examples in iOS include UIKit and the Foundation
frameworks. Frameworks such as these contain a dynamic library and optionally
assets, such as images.

* kernel can map the dynamic framework to multiple processes that depend on the framework.
* can load the framework at runtime,
* can use LLDB to explore and execute code at runtime
