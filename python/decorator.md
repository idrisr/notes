# Decorators

http://www.artima.com/weblogs/viewpost.jsp?thread=240845



## Decorators with arguments

example of using a decorator with an argument

```python
import time


def timer(n):
    def outer_wrapper(f):
        def inner_wrapper(*args, **kwargs):
            start = time.time()
            rv = [f(*args, **kwargs) for _ in range(n)]
            end = time.time()
            elapsed = end - start
            print(elapsed)
            return rv
        return inner_wrapper
    return outer_wrapper


@timer(2000)
def a():
    n = 1000
    l = [_ for _ in range(n)]


a()
```
