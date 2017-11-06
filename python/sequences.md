# sequences

## container sequences
`list`, `tuple` and `collections.deque` can hold items of different types.

Container sequences hold references to the objects they contain, which may be of
any type.

## flat sequences
`str`, `bytes`, `bytearray`, `memoryview` and `array.array` hold items of one
type.

Flat sequences physically store the value of each item within its own memory
space, and not as distinct objects. Thus, flat sequences are more compact, but
they are limited to holding primitive values like characters, bytes and numbers

## mutable sequences
`list`, `bytearray`, `array.array`, `collections.deque` and `memoryview`


## `array.array`
lean as a fucking C array

```python
from array import array
from random import random
```

```python
Init signature: array(self, /, *args, **kwargs)
Docstring:
array(typecode [, initializer]) -> array

Return a new array whose items are restricted by typecode, and
initialized from the optional initializer value, which must be a list,
string or iterable over elements of the appropriate type.

Arrays represent basic values and behave very much like lists, except
the type of objects stored in them is constrained. The type is specified
at object creation time by using a type code, which is a single character.
The following type codes are defined:

    Type code   C Type             Minimum size in bytes
    'b'         signed integer     1
    'B'         unsigned integer   1
    'u'         Unicode character  2 (see note)
    'h'         signed integer     2
    'H'         unsigned integer   2
    'i'         signed integer     2
    'I'         unsigned integer   2
    'l'         signed integer     4
    'L'         unsigned integer   4
    'q'         signed integer     8 (see note)
    'Q'         unsigned integer   8 (see note)
    'f'         floating point     4
    'd'         floating point     8
```
