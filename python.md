Python topics

## Decorators
todo - deep dive into this and really grok decorators

A function returning another function, usually applied as a function transformation using the `@wrapper` syntax. Common examples for decorators are `classmethod()` and `staticmethod()`.

The decorator syntax is merely syntactic sugar, the following two function definitions are semantically equivalent:

```python
def f(...):
    ...
f = staticmethod(f)
```

```python
@staticmethod
def f(...):
    ...
```

The same concept exists for classes, but is less commonly used there. See the documentation for function definitions and class definitions for more about decorators.


```python
@f1(arg)
@f2
def func(): pass
is roughly equivalent to

def func(): pass
func = f1(arg)(f2(func)) // how does f1 not take 2 args?
```

### `@property`
basically a nice way to hide a private instance variable behind getters and
setters. note that the private instance variable isnt really private because
python.

The `@property` decorator turns a method into a “getter” for a
read-only attribute with the same name, and it sets the docstring to
“Get the current [property-name].”

A property object has getter, setter, and deleter methods usable as decorators
that create a copy of the property with the corresponding accessor function set
to the decorated function.

## Import
todo process

## generator

## iterator

## iterable
The `__iter__` method is what makes an `object` iterable. Behind the scenes, the
`iter` function calls `__iter__` method on the given `object`.

# Packages and Modules
from [here](https://docs.python.org/3.6/tutorial/modules.html#tut-packages)

packages are a higher level than modules. A module is just a file. A package is
a bunch of modules, with certain files like the `__init__.py` to let the
interpreter know we've got a module

## package

Packages are a way of structuring Python’s module namespace by using “dotted
module names”. For example, the module name `A.B` designates a submodule named `B`
in a package named `A`. Just like the use of modules saves the authors of
different modules from having to worry about each other’s global variable names,
the use of dotted module names saves the authors of multi-module packages like
NumPy or the Python Imaging Library from having to worry about each other’s
module names.

Suppose you want to design a collection of modules (a “package”) for the uniform
handling of sound files and sound data. There are many different sound file
formats (usually recognized by their extension, for example: .wav, .aiff, .au),
so you may need to create and maintain a growing collection of modules for the
conversion between the various file formats. There are also many different
operations you might want to perform on sound data (such as mixing, adding echo,
applying an equalizer function, creating an artificial stereo effect), so in
addition you will be writing a never-ending stream of modules to perform these
operations. Here’s a possible structure for your package (expressed in terms of
a hierarchical filesystem):

```shell
sound/                          Top-level package
      __init__.py               Initialize the sound package
      formats/                  Subpackage for file format conversions
              __init__.py
              wavread.py
              wavwrite.py
              aiffread.py
              aiffwrite.py
              auread.py
              auwrite.py
              ...
      effects/                  Subpackage for sound effects
              __init__.py
              echo.py
              surround.py
              reverse.py
              ...
      filters/                  Subpackage for filters
              __init__.py
              equalizer.py
              vocoder.py
              karaoke.py
              ...
```

When importing the package, Python searches through the directories on `sys.path`
looking for the package subdirectory.

## module

If you quit from the Python interpreter and enter it again, the definitions you
have made (functions and variables) are lost. Therefore, if you want to write a
somewhat longer program, you are better off using a text editor to prepare the
input for the interpreter and running it with that file as input instead. This
is known as creating a script. As your program gets longer, you may want to
split it into several files for easier maintenance. You may also want to use a
handy function that you’ve written in several programs without copying its
definition into each program.

To support this, Python has a way to put definitions in a file and use them in a
script or in an interactive instance of the interpreter. Such a file is called a
module; definitions from a module can be imported into other modules or into the
main module (the collection of variables that you have access to in a script
executed at the top level and in calculator mode).

A module is a file containing Python definitions and statements. The file name
is the module name with the suffix .py appended. Within a module, the module’s
name (as a string) is available as the value of the global variable __name__.
For instance, use your favorite text editor to create a file called fibo.py in
the current directory with the following contents:

## wheel & egg
from [here](https://pypi.python.org/pypi/wheel)

The new distribution format for python, replacing eggs.

### `raise`


### `callable`

### `obj`
The underlying `object` of the `memoryview`
