# `__init__.py`

tells python that the directory is a package

`__init__.py` can be an empty file but it is often used to perform setup needed
for the package(import things, load things into path, etc).



```bash
├── app
│   ├── __init__.py
│   ├── models.py
│   └── people.py
└── thing.py
```

```python
#  people.py
from app.models import User

class Idris(object):
    def __init__(self):
        print("Id!")

    def __call__(self):
        u = User()
        u()
```

```python
# __init__.py
db = "DB!"

def thing():
    print("def thing")
```

Note in `people.py` how we must specify which package the module `models` is in

---

but if we import the module in `__init__.py`, then it's available later on
```python
# __init__.py
db = "DB!"

from app.models import User


def thing():
    print("def thing")
```

```python
#  people.py

from app import User


class Idris(object):
    def __init__(self):
        print("Id!")

    def __call__(self):
        u = User()
        u()

```
