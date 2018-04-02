# Access Control

Access control restricts access to parts of your code from code in other source
files and modules. This feature enables you to hide the implementation details
of your code, and to specify a preferred interface through which that code can
be accessed and used.

# Order of Restricitivity
* `Open`
* `Public`
* `FilePrivate`
* `Private`

## Modules and Source Files

Swift’s access control model is based on the concept of modules and source
files.

A module is a single unit of code distribution—a framework or application that
is built and shipped as a single unit and that can be imported by another
module with Swift’s import keyword.

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

## Open & Public

Open access and public access enable entities to be used
within any source file from their defining module, and also in a source file
from another module that imports the defining module. You typically use open or
public access when specifying the public interface to a framework. The
difference between open and public access is described below.

## Open vs Public
* open can be subclassed across module boundaries
* public can be accessed, but not subclassed across module boundaries

## Internal - Default

Internal access enables entities to be used within any source file
from their defining module, but not in any source file outside of that module.
You typically use internal access when defining an app’s or a framework’s
internal structure.

## FilePrivate

File-private access restricts the use of an entity to its own
defining source file. Use file-private access to hide the implementation
details of a specific piece of functionality when those details are used within
an entire file.

## Private

Private access restricts the use of an entity to the enclosing
declaration, and to extensions of that declaration that are in the same file.
Use private access to hide the implementation details of a specific piece of
functionality when those details are used only within a single declaration.

## Open v. Public
* Classes with public access, or any more restrictive access level, can be
subclassed only within the module where they’re defined.

* Class members with public access, or any more restrictive access level, can be
overridden by subclasses only within the module where they’re defined.

* Open classes can be subclassed within the module where they’re defined, and
within any module that imports the module where they’re defined.

* Open class members can be overridden by subclasses within the module where
they’re defined, and within any module that imports the module where they’re
defined.

### Guiding-Principles

Access levels in Swift follow an overall guiding principle: No entity can be
defined in terms of another entity that has a lower (more restrictive) access
level.

### Access Levels for Unit Test Targets
When you write an app with a unit test target, the code in your app needs to be
made available to that module in order to be tested. By default, only entities
marked as open or public are accessible to other modules. However, a unit test
target can access any internal entity, if you mark the import declaration for a
product module with the @testable attribute and compile that product module
with testing enabled.
