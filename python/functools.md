# functools

https://docs.python.org/3/library/functools.html

https://pymotw.com/3/functools/

The `functools` module is for higher-order functions: functions that act on or
return other functions. In general, any callable object can be treated as a
function for the purposes of this module.

## `@wraps`

```python
from functools import wraps


def another_function(func):
    """
    A function that accepts another function
    """

    @wraps(func) # this line basically doesnt fuck up the name and docstring
    def wrapper():
        """
        A wrapping function
        """
        val = "The result of %s is %s" % (func(), eval(func()))
        return val
    return wrapper


@another_function
def a_function():
    """
    A pretty useless function
    """
    return "1+1"

if __name__ == '__main__':
    print(a_function.__name__)
    print(a_function.__doc__)
```

### without `@wraps`
takes the decorator's inner function's value
```bash
wrapper

        A wrapping function
```

### with `@wraps`
does not take the decorator's inner function's value
```bash
a_function

    A pretty useless function
```
