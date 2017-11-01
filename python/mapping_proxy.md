# mapping proxy

```python
>>> class A:
    pass

>>> a = A()
>>> type(a.__dict__)
<class 'dict'>
>>> type(A.__dict__)
<class 'mappingproxy'>
```

This helps the interpreter assure that the keys for class-level attributes and
methods can only be strings.

Elsewhere, Python is a "consenting adults language", meaning that dicts for
objects are exposed and mutable by the user. However, in the case of class-level
attributes and methods for classes, if we can guarantee that the keys are
strings, we can simplify and speed-up the common case code for attribute and
method lookup at the class-level. In particular, the `__mro__` search logic for
new-style classes is simplified and sped-up by assuming the class dict keys are
strings.
