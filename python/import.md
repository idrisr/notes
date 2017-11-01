# import

## `import` types

### regular imports
```python
import sys
import os, sys, time
import sys as system
```

### using from

```python
from functools import lru_cache
from os import *
from os import (path, walk, unlink, uname, remove, rename)
from os import path, walk, unlink, uname, \
            remove, rename
```

### relative imports

### optional imports

### local imports

### import pitfalls

### implicit relative imports

```python
>>> import fibo
```
This does not enter the names of the functions defined in fibo directly in the
current symbol table; it only enters the module name fibo there. Using the
module name you can access the functions:


### module search path

When a module named `spam` is imported, the interpreter first searches for a
built-in module with that name. If not found, it then searches for a file named
`spam.py` in a list of directories given by the variable `sys.path`. `sys.path` is
initialized from these locations:

The directory containing the input script (or the current directory when no file
is specified). `PYTHONPATH` (a list of directory names, with the same syntax as
the shell variable `PATH`). The installation-dependent default.


### packages
https://docs.python.org/3/tutorial/modules.html

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

```python
sound/                          # Top-level package
      __init__.py               # Initialize the sound package
      formats/                  # Subpackage for file format conversions
              __init__.py
              wavread.py
              wavwrite.py
              aiffread.py
              aiffwrite.py
              auread.py
              auwrite.py
              ...
      effects/                  # Subpackage for sound effects
              __init__.py
              echo.py
              surround.py
              reverse.py
              ...
      filters/                  # Subpackage for filters
              __init__.py
              equalizer.py
              vocoder.py
              karaoke.py
              ...
```

The `__init__.py` files are required to make Python treat the directories as
containing packages; this is done to prevent directories with a common name,
such as string, from unintentionally hiding valid modules that occur later on
the module search path. In the simplest case, `__init__.py` can just be an empty
file, but it can also execute initialization code for the package or set the
`__all__` variable, described later.

Note that when using `from package import item`, the `item` can be either a
submodule (or subpackage) of the package, or some other name defined in the
package, like a function, class or variable. The import statement first tests
whether the item is defined in the package; if not, it assumes it is a module
and attempts to load it. If it fails to find it, an `ImportError` exception is
raised.

Contrarily, when using syntax like `import item.subitem.subsubitem`, each item
except for the last must be a package; the last item can be a module or a
package but can’t be a class or function or variable defined in the previous
item.
