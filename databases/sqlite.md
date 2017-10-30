# SQLite



## `pragma`

https://sqlite.org/pragma.html

The `PRAGMA` statement is an SQL extension specific to SQLite and used to modify
the operation of the SQLite library or to query the SQLite library for internal
(non-table) data. The `PRAGMA` statement is issued using the same interface as
other SQLite commands (e.g. `SELECT`, `INSERT`) but is different in the following
important respects:

* Specific `pragma` statements may be removed and others added in future releases of
SQLite. There is no guarantee of backwards compatibility.
* No error messages are generated if an unknown `pragma` is issued. Unknown `pragma`'s
are simply ignored. This means if there is a typo in a `pragma` statement the
library does not inform the user of the fact.
* Some `pragma`'s take effect during the SQL compilation stage, not the execution
stage. This means if using the C-language `sqlite3_prepare()`, `sqlite3_step()`,
`sqlite3_finalize()` API (or similar in a wrapper interface), the `pragma` may run
during the `sqlite3_prepare()` call, not during the `sqlite3_step()` call as normal
SQL statements do. Or the `pragma` might run during `sqlite3_step() `just like
normal SQL statements. Whether or not the pragma runs during `sqlite3_prepare()`
or `sqlite3_step()` depends on the pragma and on the specific release of SQLite.
* The `pragma` command is specific to SQLite and is not compatible with any other
SQL database engine.

## Write Ahead Logging
The traditional rollback journal works by writing a copy of the original
unchanged database content into a separate rollback journal file and then
writing changes directly into the database file. In the event of a crash or
ROLLBACK, the original content contained in the rollback journal is played back
into the database file to revert the database file to its original state. The
COMMIT occurs when the rollback journal is deleted.

The WAL approach inverts this. The original content is preserved in the database
file and the changes are appended into a separate WAL file. A COMMIT occurs when
a special record indicating a commit is appended to the WAL. Thus a COMMIT can
happen without ever writing to the original database, which allows readers to
continue operating from the original unaltered database while changes are
simultaneously being committed into the WAL. Multiple transactions can be
appended to the end of a single WAL file.

### Checkpointing

Of course, one wants to eventually transfer all the transactions that are
appended in the WAL file back into the original database. Moving the WAL file
transactions back into the database is called a "checkpoint".

Another way to think about the difference between rollback and write-ahead log
is that in the rollback-journal approach, there are two primitive operations,
reading and writing, whereas with a write-ahead log there are now three
primitive operations: reading, writing, and checkpointing.

By default, SQLite does a checkpoint automatically when the WAL file reaches a
threshold size of 1000 pages. (The SQLITE_DEFAULT_WAL_AUTOCHECKPOINT
compile-time option can be used to specify a different default.) Applications
using WAL do not have to do anything in order to for these checkpoints to occur.
But if they want to, applications can adjust the automatic checkpoint threshold.
Or they can turn off the automatic checkpoints and run checkpoints during idle
moments or in a separate thread or process.

### `VACUUM`

https://sqlite.org/lang_vacuum.html

The `VACUUM` command rebuilds the database file, repacking it into a minimal
amount of disk space.

### `wal_checkpoint`

```sql
sqlite> PRAGMA wal_checkpoint;
sqlite> VACUUM;
```
