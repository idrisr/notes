# TTY

from [here](http://www.linusakesson.net/programming/tty/index.php)

## line
Most interactive applications (editors, mail user agents, shells, all programs
relying on curses or readline) run in raw mode, and handle all the line editing
commands themselves. The line discipline also contains options for character
echoing and automatic conversion between carriage returns and linefeeds. Think
of it as a primitive kernel-level sed(1), if you like.

## `/dev`

Together, a particular triplet of UART driver, line discipline instance and TTY
driver may be referred to as a TTY device, or sometimes just TTY. A user process
can affect the behaviour of any TTY device by manipulating the corresponding
device file under /dev. Write permissions to the device file are required, so
when a user logs in on a particular TTY, that user must become the owner of the
device file. This is traditionally done by the login(1) program, which runs with
root privileges.

## `pty`

To facilitate moving the terminal emulation into userland, while still keeping
the TTY subsystem (session management and line discipline) intact, the pseudo
terminal or pty was invented. And as you may have guessed, things get even
more complicated when you start running pseudo terminals inside pseudo
terminals, à la screen(1) or ssh(1).

## jobs and sessions

Jobs and sessions Job control is what happens when you press ^Z to suspend a
program, or when you start a program in the background using &. A job is the
same as a process group. Internal shell commands like `jobs`, `fg` and `bg` can be
used to manipulate the existing jobs within a session. Each session is managed
by a session leader, the shell, which is cooperating tightly with the kernel
using a complex protocol of signals and system calls.
