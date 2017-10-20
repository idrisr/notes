# python classes

read me
http://blog.thedigitalcatonline.com/blog/2016/04/03/abstract-base-classes-in-python/

## abstract base class

from - https://pymotw.com/3/abc/index.html

Abstract base classes are a form of interface checking more strict than
individual `hasattr()` checks for particular methods. By defining an abstract base
class, a common API can be established for a set of subclasses. This capability
is especially useful in situations where someone less familiar with the source
for an application is going to provide plug-in extensions, but can also help
when working on a large team or with a large code-base where keeping track of
all of the classes at the same time is difficult or not possible.

## meta class

from - https://jakevdp.github.io/blog/2012/12/01/a-primer-on-python-metaclasses/

```python
#!/usr/bin/env python
class DoNothing(object):
    pass

d = DoNothing()

print(type(d))
print(type(DoNothing))


In [1]: run class_fun.py

In [2]: run class_fun.py
<class '__main__.DoNothing'>
<class 'type'>

In [3]: type(tuple)
Out[3]: type

In [4]: type(tuple), type(list), type(int), type(float)
Out[4]: (type, type, type, type)

In [5]: type(tuple), type(list), type(int), type(float), type(9)
Out[5]: (type, type, type, type, int)

In [6]: type(type)
Out[6]: type

In [8]: type??
Init signature: type(self, /, *args, **kwargs)
Docstring:
type(object_or_name, bases, dict)
type(object) -> the object's type
type(name, bases, dict) -> a new type
Type:           type
```

Yes, you read that correctly: the type of `type` is `type`. In other words,
`type` is an instance of itself.

```python
type(name, bases, dct)
* `name` is a string giving the name of the class to be constructed
* `bases` is a tuple giving the parent classes of the class to be constructed
* `dct` is a dictionary of the attributes and methods of the class to be
constructed
```

### metaprogramming: creating classes on the fly

### custom metaclass

## virtual class

## old style vs new style classes

```python
class A:  # -> inherits from 'type'
    pass
```
New-style class in python 2.x:

```python
class A(object):  # -> clearly inherits from 'object'
    pass
```

In python 3 there aren't new or old styles of classes and they inherit directly
from 'object' so there is no need to specify it as a base anymore.
