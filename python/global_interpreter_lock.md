# Global Interpreter Lock

from wikipedia

A global interpreter lock (GIL) is a mutual-exclusion lock held by a programming
language interpreter thread to avoid sharing code that is not thread-safe with
other threads. In implementations with a GIL, there is always one GIL for each
interpreter process. CPython and Ruby MRI use GILs.
Applications running on implementations with a GIL can be designed to use
separate processes to achieve full parallelism, as each process has its own
interpreter and in turn has its own GIL. Otherwise, the GIL can be a significant
barrier to parallelism. GILs is used by CPython and Ruby MRI.
