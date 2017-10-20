# with

allows the execution of initialization and finalization code around a block of
code

## context

## context managers

Python’s with statement supports the concept of a runtime context defined by a
context manager. This is implemented using a pair of methods that allow
user-defined classes to define a runtime context that is entered before the
statement body is executed and exited when the statement ends:

```python
contextmanager.__enter__()
contextmanager.__exit__(exc_type, exc_val, exc_tb)
```

### example
```python
import sqlite3

db_filename = 'todo.db'

with sqlite3.connect(db_filename) as conn:
    conn.row_factory = sqlite3.Row
```
