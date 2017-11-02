# python `*args` and `**kwargs`

basically you can use it to pass along positional arguments and keyword arguments. Each `def` has required args, positional args, and named args

```python
def yo(required_args, *pos_args, **keyword_args):
  ...
```

## `*args`
positional arguments

## `**kwargs`
named arguments

```python
s1 = "yo what the {wot}"
s2 = "yo what the {}"
d = {"wot": "fuck"}

print(s1.format(**d))    // kwargs
print(s2.format("fuck")) // args
```

the whole point of is it that you can pass along arbitrary positional and named
arguments to any function, especially in decorators

## decorator usage

```python
import time

def timer(f):
    def wrapper(*args, **kwargs):
        start = time.time()
        f(*args, **kwargs)
        end = time.time()
        print(end - start)
    return wrapper


@timer
def a():
    n = 1000000
    l = [_ for _ in range(n)]


a()
```
