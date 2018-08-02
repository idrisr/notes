# `mach-o`

* [readme](https://www.objc.io/issues/6-build-tools/mach-o-executables/)

* [andme](http://iokit.racing/machotricks.pdf)

* [readme]( https://developer.apple.com/library/archive/documentation/DeveloperTools/Conceptual/MachOTopics/1-Articles/executing_files.html#//apple_ref/doc/uid/TP40001829)

* [readme](http://blog.darlinghq.org/2018/07/mach-o-linking-and-loading-tricks.html)

The process of loading and linking a program in OS X mainly involves two
entities: the OS X kernel and the dynamic linker

When you execute a program, the kernel creates a process for the program, and
loads the program and the dynamic linker shared library, usually `/usr/lib/dyld`,
in the program’s address space

When you launch an application from the Finder or the Dock, or when you run a
program in a shell, the system ultimately calls two functions on your behalf,
;
* fork and
  * The fork function creates a process;
* execve.
  * the execve function loads and executes the program.

There are several variant exec functions, such as
execl, execv, and exect, each providing a slightly different way of passing
arguments and environment variables to the program. In OS X, each of these other
exec routines eventually calls the kernel routine execve.

To create a process using BSD system calls, your process must call the fork
system call. The fork call creates a logical copy of your process, then returns
the ID of the new process to your process. Both the original process and the new
process continue executing from the call to fork; the only difference is that
fork returns the ID of the new process to the original process and zero to the
new process. (The fork function returns -1 to the original process and sets
errno to a specific error value if the new process could not be created.)
