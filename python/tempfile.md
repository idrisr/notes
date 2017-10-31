# `import tempfile`

from here https://pymotw.com/3/tempfile/

Creating temporary files with unique names securely, so they cannot be guessed
by someone wanting to break the application or steal the data, is challenging.
The `tempfile` module provides several functions for creating temporary file
system resources securely. `TemporaryFile()` opens and returns an unnamed file,
`NamedTemporaryFile()` opens and returns a named file, `SpooledTemporaryFile` holds
its content in memory before writing to disk, and `TemporaryDirectory` is a
context manager that removes the directory when the context is closed.
