# iOS Framework

* built once and be reused an infinite number of times

# Terms
* from [here](https://theswiftdev.com/2018/01/25/deep-dive-into-swift-frameworks/)

## Package
* A package consists of Swift source files and a manifest file.

```
# example
Sources
    my-source-file.swift
Package.swift
```

## Library
Library is a packaged collection of object files that a program can link against.

## Object files
To create programs, developers convert source code to object files. The object
files are then packaged into executable code or static libraries, which for iOS means making
Mach-O (Machine Object) format object files.

## Linking libraries
* Linking refers to the creation of a single executable file from multiple object files.
* After the compiler has created all the object files, another program is called
to bundle them into an executable program file. That program is called a
linker and the process of bundling them into the executable is called linking.

## Static Linking
* The source code of the library is literally going to be copied into the application's source.

## Dynamic Linking
* Dynamic libraries are not embedded into the source of the binary, they are loaded at runtime.
* also known as shared libraries

## Framework
* A framework is a hierarchical directory that encapsulates shared resources, such
as a dynamic shared library, nib files, image files, localized strings, header
files, and reference documentation in a single package.
* static or dynamic libraries

## Module
* Swift organizes code into modules. Each module specifies a namespace and
enforces access controls on which parts of that code can be used outside of
the module.

## Modules and module maps


## errata


### `FOUNDATION_EXPORT`
* from [here](https://stackoverflow.com/questions/10953221/foundation-export-vs-extern)
* same thing as `extern`, though will be a bit different for C++, win32, etc
