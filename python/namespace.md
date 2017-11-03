# nampespaces

from [here](https://docs.python.org/3/tutorial/classes.html)

A namespace is a mapping from names to objects. Most namespaces are currently
implemented as Python dictionaries, but that’s normally not noticeable in any
way (except for performance), and it may change in the future.

Examples of namespaces are:

* the set of built-in names (containing functions such as `abs()`, and built-in exception names);
* the global names in a module;
* and the local names in a function invocation.

In a sense the set of attributes of an object also form a namespace. The
important thing to know about namespaces is that there is absolutely no relation
between names in different namespaces; for instance, two different modules may
both define a function `maximize` without confusion — users of the modules must
prefix it with the module name.

By the way, I use the word attribute for any name following a dot — for example,
in the expression `z.real`, `real` is an attribute of the object `z`. Strictly
speaking, references to names in modules are attribute references: in the
expression `modname.funcname`, `modname` is a module object and `funcname` is an
attribute of it. In this case there happens to be a straightforward mapping
between the module’s attributes and the global names defined in the module: they
share the same namespace!

Namespaces are created at different moments and have different lifetimes. The
namespace containing the built-in names is created when the Python interpreter
starts up, and is never deleted. The global namespace for a module is created
when the module definition is read in; normally, module namespaces also last
until the interpreter quits. The statements executed by the top-level invocation
of the interpreter, either read from a script file or interactively, are
considered part of a module called `__main__`, so they have their own global
namespace. (The built-in names actually also live in a module; this is called
`builtins`.)

A scope is a textual region of a Python program where a namespace is directly
accessible. “Directly accessible” here means that an unqualified reference to a
name attempts to find the name in the namespace.

Usually, the local scope references the local names of the (textually) current
function. Outside functions, the local scope references the same namespace as
the global scope: the module’s namespace. Class definitions place yet another
namespace in the local scope.

A special quirk of Python is that – if no global statement is in effect –
assignments to names always go into the innermost scope. Assignments do not copy
data — they just bind names to objects. The same is true for deletions: the
statement del x removes the binding of x from the namespace referenced by the
local scope. In fact, all operations that introduce new names use the local
scope: in particular, import statements and function definitions bind the module
or function name in the local scope.

The global statement can be used to indicate that particular variables live in
the global scope and should be rebound there; the nonlocal statement indicates
that particular variables live in an enclosing scope and should be rebound
there.

## global
The global statement is a declaration which holds for the entire current code
block. It means that the listed identifiers are to be interpreted as globals. It
would be impossible to assign to a global variable without global, although free
variables may refer to globals without being declared global.

## nonlocal
The nonlocal statement causes the listed identifiers to refer to previously
bound variables in the nearest enclosing scope excluding globals. This is
important because the default behavior for binding is to search the local
namespace first. The statement allows encapsulated code to rebind variables
outside of the local scope besides the global (module) scope.
