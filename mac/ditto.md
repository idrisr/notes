# ``ditto``

from `man `ditto``

In its first form, ``ditto`` copies one or more source files or directories to a
destination directory.  If the destination directory does not exist it will be
created before the first source is copied.  If the destination directory already
exists then the source directories are merged with the previous contents of the
destination.

In its second form, `ditto` copies a file to the supplied `dst_file` pathname.

The next two forms reflect `ditto`'s ability to create and extract archives. These
archives can be either CPIO format (preferred for unix content) or PKZip (for
Windows compatibility).  src_archive (and dst_archive) can be the single
character '-', causing `ditto` to read (write) archive data from stdin (or to
stdout, respectively).
