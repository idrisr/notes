# `__mro__`

Method resolution order.

```python
class A(object):
    def __call__(self):
        print("A")


class B(A):
    def __call__(self):
        print("B")


class C(B):
    def __call__(self):
        print("C")

class D(B, A):
    pass


print(A.__mro__)
print(B.__mro__)
print(C.__mro__)
print(D.__mro__)
```

```python
(<class '__main__.A'>, <class 'object'>)
(<class '__main__.B'>, <class '__main__.A'>, <class 'object'>)
(<class '__main__.C'>, <class '__main__.B'>, <class '__main__.A'>, <class 'object'>)
(<class '__main__.D'>, <class '__main__.B'>, <class '__main__.A'>, <class 'object'>)
```

```python
class D(B, A):
    pass
```

gets you an error, because The MRO guarantees that leftmost bases are visited
before rightmost ones - but it also guarantees that among ancestors if `B` is a
subclass of `A` then `B` is visited before `A`. It's impossible to satisfy both
of these guarantees in this case


```
Traceback (most recent call last):
  File "mro.py", line 21, in <module>
    class E(A, B):
TypeError: Cannot create a consistent method resolution
order (MRO) for bases A, B
```
