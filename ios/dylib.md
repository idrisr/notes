# `dylib`

[readme](https://developer.apple.com/library/archive/documentation/DeveloperTools/Conceptual/DynamicLibraries/000-Introduction/Introduction.html#//apple_ref/doc/uid/TP40001908-SW1)

[andme](http://newosxbook.com/articles/DYLD.html)

A file with the `DYLIB` file extension is a
* Mach-O (Mach Object) Dynamic Library file
* that an application references during runtime
* in order to perform certain functions on an as-needed basis.
* The format has replaced the older A.OUT file format.

Mach-O is a file format that's used for various types of files including object
code, shared libraries, core dumps, and executable files, so they might contain
general data that multiple applications may reuse over time.

DYLIB files are normally seen saved with other Mach-O files like .BUNDLE and .O
files, or even alongside files that are without a file extension. The libz.dylib
file is a common DYLIB file that's the dynamic library for the Zlib compression
library.

* A file ending in the extension .dylib is a dynamic library: it's a library that's loaded at runtime instead of at compile time.
