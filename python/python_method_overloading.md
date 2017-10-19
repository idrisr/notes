# Python Method Overloading

`tl;dr` - overloading doesn't exist in Python. Learn to love duck-typing instead.

## Example

```python
class Person(object):
    def __init__(self, data):
        """docstring for __init__"""
        self.first_name = data["first_name"]
        self.last_name = data["last_name"]

    def __init__(self, first_name, last_name):
        self.first_name = first_name
        self.last_name = last_name


p1 = Person("Id", "Raja")
data = {"first_name": "Id", "last_name": "Money"}
p2 = Person(data)
```

basically you can't do it. You can but you don't get what you want.


from [here](https://stackoverflow.com/questions/10202938/how-do-i-use-method-overloading-in-python)

In Python, think of methods as a special set of "attributes", and there can only
be one "attribute" (and thus one method) of a given name for an object. The last
method overwrites any previous methods. In Java, methods are not first-class
citizens (they are not "attributes of objects"), but are rather invoked by
"sending messages" that are are statically resolved based on closest type (which
is where overloading comes in).
