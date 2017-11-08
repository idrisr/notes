# file systems table, aka `fstab`

`/etc/fstab`

https://en.wikipedia.org/wiki/Fstab

The `fstab` (or file systems table) file is a system configuration file commonly
found at `/etc/fstab` on Unix and Unix-like computer systems. In Linux it is
part of the `util-linux` package. The `fstab` file typically lists all available
disk partitions and other types of file systems and data sources that are not
necessarily disk-based, and indicates how they are to be initialized or
otherwise integrated into the larger file system structure.

The `fstab` file is read by the `mount` command, which happens automatically at
boot time to determine the overall file system structure, and thereafter when a
user executes the `mount` command to modify that structure. It is the duty of the
system administrator to properly create and maintain the `fstab` file. While
`fstab` is still used for basic system configuration, for other uses it has been
superseded by automatic mounting mechanisms.
