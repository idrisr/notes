# sqlite in python

[python 2](https://docs.python.org/2/library/sqlite3.html)

## `connection`

a connection just opens a line of contact between your client and the database,
and it might be a network connection but doesnt necessarily have to be. your
connection could be local

When a database is accessed by multiple connections, and one of the processes modifies the database, the SQLite database is locked until that transaction is committed. The timeout parameter specifies how long the connection should wait for the lock to go away until raising an exception. The default for the timeout parameter is 5.0 (five seconds).


## `cursor`
To use cursors in SQL procedures, you need to do the following:
1. Declare a cursor that defines a result set.
1. Open the cursor to establish the result set.
1. Fetch the data into local variables as needed from the cursor, one row at a time.
1. Close the cursor when done.

## `commit`
commits the changes

## `execute`

```python
# Never do this -- insecure!
symbol = 'RHAT'
c.execute("SELECT * FROM stocks WHERE symbol = '%s'" % symbol)

# Do this instead
t = ('RHAT',)
c.execute('SELECT * FROM stocks WHERE symbol=?', t)
print c.fetchone()
```
