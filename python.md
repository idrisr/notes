Python topics

## Decorators
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

## Import
todo process

## generator

## iterator

## iterable
