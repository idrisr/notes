from [here](https://swift.org/package-manager)

# Modules

A module is a single unit of code distribution—a framework or application that
is built and shipped as a single unit and that can be imported by another
module with Swift’s `import` keyword.

Each build target (such as an app bundle or framework) in Xcode is treated as a
separate module in Swift. If you group together aspects of your app’s code as a
stand-alone framework—perhaps to encapsulate and reuse that code across
multiple applications—then everything you define within that framework will be
part of a separate module when it’s imported and used within an app, or when
it’s used within another framework.

A source file is a single Swift source code file within a module (in effect, a
single file within an app or framework). Although it’s common to define
individual types in separate source files, a single source file can contain
definitions for multiple types, functions, and so on.

# Packages

A package consists of Swift source files and a manifest file. The manifest
file, called Package.swift, defines the package’s name and its contents using
the PackageDescription module.

A package has one or more targets. Each target specifies a product and may
declare one or more dependencies.

# Product

A target may build either a library or an executable as its product. A library
contains a module that can be imported by other Swift code. An executable is a
program that can be run by the operating system.

# Frameworks

# Dependencies

A target’s dependencies are modules that are required by code in the package. A
dependency consists of a relative or absolute URL to the source of the package
and a set of requirements for the version of the package that can be used. The
role of the package manager is to reduce coordination costs by automating the
process of downloading and building all of the dependencies for a project. This
is a recursive process: A dependency can have its own dependencies, each of
which can also have dependencies, forming a dependency graph. The package
manager downloads and builds everything that is needed to satisfy the entire
dependency graph.

---

from [here](https://www.youtube.com/watch?v=o3HG0Z3yc5c)

## `C`
* before we had `.h` files, to declare headers
* like `#include` from `.c` files
* they're kind of a mess
* things can be imported twice
* therefore `IF_DEF`s

## `ObjC`
* use `import Header` and then the compiler keeps track to not import things twice

## Module Maps
* what headers are part of module
* special treatment
* modulemap gets translated

```
# standard xcode module map
framework module UsefulFramework {
    umbrella header "UsefulFramework.h"

    export *
    module * { export * }
}
```

### line by line

* declaring module named UsefulFramework
```
framework module UsefulFramework {
```

* the heart of it
* tells what headers are included as part of module
* umbrella responsible for importing all the other public headers
```
umbrella header "UsefulFramework.h"
```

```
export *
```
* all headers should be exported

```
module * { export * }
```
* file can import `UsefulFramework.file` class to make it more clear which file your class is dependent on