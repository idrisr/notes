# SQL Alchemy

well this was the clue i needed to get unstuck after 90 minutes

```bash
Valid SQLite URL forms are:
 sqlite:///:memory: (or, sqlite://)
 sqlite:///relative/path/to/file.db
 sqlite:////absolute/path/to/file.db
```

## ORM
The ORM is in contrast to the SQLAlchemy Expression Language, upon which the ORM
is constructed. Whereas the SQL Expression Language, introduced in SQL
Expression Language Tutorial, presents a system of representing the primitive
constructs of the relational database directly without opinion, the ORM presents
a high level and abstracted pattern of usage, which itself is an example of
applied usage of the Expression Language.

## SQLAlchemy Expression Language
The return value of `create_engine() `is an instance of `Engine`, and it
represents the core interface to the database, adapted through a dialect that
handles the details of the database and `DBAPI` in use. In this case the SQLite
dialect will interpret instructions to the Python built-in `sqlite3` module.

The `Engine`, when first returned by `create_engine()`, has not actually tried
to connect to the database yet; that happens only the first time it is asked to
perform a task against the database.

## DBAPI
todo -- ??

## declarative

## instrumentation
Outside of what the mapping process does to our class, the class remains
otherwise mostly a normal Python class, to which we can define any number of
ordinary attributes and methods needed by our application.

When our class is constructed, `Declarative` replaces all the `Column` objects
with special Python accessors known as `descriptors`; this is a process known as
instrumentation. The "instrumented" mapped class will provide us with the means
to refer to our table in a SQL context as well as to persist and load the values
of columns from the database.

### `sqlalchemy.sql.schema.Table`
