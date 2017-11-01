 # mixins

 basically multiple inheritance but you can clobber shit.

 ```python
 class Mixin1(object):
    def __call__(self):
        print("Mixin1")


class Mixin2(object):
    def __call__(self):
        print("Mixin2")


class MyClass(Mixin2, Mixin1):  # will give a different result!
class MyClass(Mixin1, Mixin2):
    pass


m = MyClass()
m()
 ```
