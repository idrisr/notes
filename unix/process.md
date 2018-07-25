# Process


```bash
get the pid in Bash
$$
```

## Everything is a File


## file descriptors

Any time that you open a resource in a running process it is assigned a file
descriptor number. File descriptors are NOT shared between unrelated processes,
they live and die with the process they are bound to, just as any open resources
for a process are closed when it exits. There are special semantics for file
descriptor sharing when you fork a process, more on that later.

Any resource that your process opens gets a unique number identifying it. This is how the kernel keeps track of any resources that your process is using.

## Standard Streams

Every Unix process comes with three open resources. These are your standard
input (STDIN), standard output (STDOUT), and standard error (STDERR) resources.

These standard resources exist for a very important reason that we take for
granted today. STDIN provides a generic way to read input from keyboard devices
or pipes, STDOUT and STDERR provide generic ways to write output to monitors,
files, printers, etc. This was one of the innovations of Unix.

File descriptors are at the core of network programming using sockets, pipes,
etc. and are also at the core of any file system operations.

## Environment

Environment, in this sense, refers to what's known as 'environment variables'. Environment variables are key-value pairs that hold data for a process.

Every process inherits environment variables from its parent. They are set by a parent process and inherited by its child processes. Environment variables are per-process and are global to each process.

Environment variables are often used as a generic way to accept input into a command-line program. Any terminal (on Unix or Windows) already supports them and most programmers are familiar with them. Using environment variables is often less overhead than explicitly parsing command line options.

## Arguments

Every process has access to a special array called ARGV. Other programming languages may implement it slightly differently, but every one has something called 'argv'.

argv is a short form for 'argument vector'. In other words: a vector, or array, of arguments. It holds the arguments that were passed in to the current process on the command line. Here's an example of inspecting ARGV and passing in some simple options.

## Processes Have Names

Unix processes have very few inherent ways of communicating about their state.

Programmers have worked around this and invented things like logfiles. Logfiles allow processes to communicate anything they want about their state by writing to the filesystem, but this operates at the level of the filesystem rather than being inherent to the process itself.

Similarly, processes can use the network to open sockets and communicate with other processes. But again, that operates at a different level than the process itself, since it relies on the network.

There are two mechanisms that operate at the level of the process itself that can be used to communicate information. One is the process name, the other is exit codes.

### Naming

Every process on the system has a name. For example, when you start up an irb session that process is given the name 'irb'. The neat thing about process names is that they can be changed at runtime and used as a method of communication.


### Exit Codes

When a process comes to an end it has one last chance to make its mark on the world: its exit code. Every process that exits does so with a numeric exit code (0-255) denoting whether it exited successfully or with an error.

Traditionally, a process that exits with an exit code of 0 is said to be successful. Any other exit code denotes an error, with different codes pointing to different errors.

## Processes Can Fork

Forking is one of the most powerful concepts in Unix programming. The fork(2)
system call allows a running process to create new process programmatically.
This new process is an exact copy of the original process.

The child process inherits a copy of all of the memory in use by the parent
process, as well as any open file descriptors belonging to the parent process.
Let's take a moment to review child processes from the eye of our first three
chapters.

Physically copying all of that data can be considerable overhead, so modern Unix
systems employ something called copy-on-write semantics (CoW) to combat this.

So a parent process and a child process will actually share the same physical
data in memory until one of them needs to modify it, at which point the memory
will be copied so that proper separation between the two processes can be
preserved.

### ruby implementations and CoW

MRI's garbage collector uses a 'mark-and-sweep' algorithm. In a nutshell this
means that when the GC is invoked it must iterate over every known object and
write to it, either saying it should be garbage collected or it shouldn't. The
important point here is that every time the GC runs every object in memory is
written to.

So, after forking, the first time that the GC runs will retract the benefit that
copy-on-write provides.

## Signals
Signals are sent from one process to another process, using the kernel as a
middleman.

The original purpose of signals was to specify different ways that a process should be killed.

With signals, any process can communicate with any other process on the system,
so long as it knows its pid. This makes signals a very powerful communication
tool. It's common to send signals from the shell using `kill(1)`.


### Signal values
#### Term
means that the process will terminate immediately
#### Core
means that the process will terminate immediately and dump core (stack trace)
#### Ign
means that the process will ignore the signal
#### Stop
means that the process will stop (ie pause)
#### Cont
means that the process will resume (ie unpause)

```
Signal   Value     Action   Comment
-------------------------------------------------------------------------
SIGHUP      1       Term    Hangup detected on controlling terminal
                                        or death of controlling process
SIGINT      2       Term    Interrupt from keyboard
SIGQUIT     3       Core    Quit from keyboard
SIGILL          4       Core    Illegal Instruction
SIGABRT         6       Core    Abort signal from abort(3)
SIGFPE          8       Core    Floating point exception
SIGKILL         9       Term    Kill signal
SIGSEGV        11       Core    Invalid memory reference
SIGPIPE        13       Term    Broken pipe: write to pipe with no readers
SIGALRM        14       Term    Timer signal from alarm(2)
SIGTERM        15       Term    Termination signal
SIGUSR1     30,10,16    Term    User-defined signal 1
SIGUSR2     31,12,17    Term    User-defined signal 2
SIGCHLD     20,17,18    Ign     Child stopped or terminated
SIGCONT     19,18,25    Cont    Continue if stopped
SIGSTOP     17,19,23    Stop    Stop process
SIGTSTP     18,20,24    Stop    Stop typed at tty
SIGTTIN     21,21,26    Stop    tty input for background process
SIGTTOU     22,22,27    Stop    tty output for background process
```

## Processes Can Communicate
This is part of a whole field of study called Inter-process communication (IPC
for short). There are many different ways to do IPC but I'm going to cover two
commonly useful method: pipes and socket pairs.

### Pipes

A pipe is a uni-directional stream of data. In other words you can open a pipe,
one process can 'claim' one end of it and another process can 'claim' the other
end. Then data can be passed along the pipe but only in one direction. So if one
process 'claims' the position of reader, rather than writer, it will not be able
to write to the pipe. And vice versa.

### Sharing Pipes
In the chapter on forking I described how open resources are shared, or copied,
when a process forks a child. Pipes are considered a resource, they get their
own file descriptors and everything, so they are shared with child processes.

### Streams vs. Messages

When I say stream I mean that when writing and reading data to a pipe there's no
concept of beginning and end. When working with an IO stream, like pipes or TCP
sockets, you write your data to the stream followed by some protocol-specific
delimiter. For example, HTTP uses a series of newlines to delimit the headers
from the body.

Then when reading data from that IO stream you read it in one chunk at a time,
stopping when you come across the delimiter. That's why I used #puts and #gets
in the last example: it used a newline as the delimiter for me.

As you may have guessed it's possible to communicate via messages instead of
streams. We can't do it with pipe, but we can do it with Unix sockets. Without
going into too much detail, Unix sockets are a type of socket that can only
communicate on the same physical machine. As such it's much faster than TCP
sockets and is a great fit for IPC.

So whereas pipes provide uni-directional communication, a socket pair provides
bi-directional communication. The parent socket can both read and write to the
child socket, and vice versa.

# Daemon Processes

control of a user at a terminal. Common examples of daemon processes are things
like web servers, or database servers which will always be running in the
background in order to serve requests.

Daemon processes are also at the core of your operating system. There are many
processes that are constantly running in the background that keep your system
functioning normally. These are things like the window server on a GUI system,
printing services or audio services so that your speakers are always ready to
play that annoying 'ding' notification.

## The First Process

When the kernel is bootstrapped it spawns a process called the init process.
This process has a ppid of 0 and is the 'grandparent of all processes'. It's the
first one and it has no ancestor. Its pid is 1.

on mac
```bash
> ps -p 1
  PID TTY           TIME CMD
    1 ??         4:01.20 /sbin/launchd
```

The ppid of orphaned processes is always 1.

## Process Groups and Session Groups
Process groups and session groups are all about job control. By 'job control'
I'm referring to the way that processes are handled by the terminal.

Each and every process belongs to a group, and each group has a unique integer
id. A process group is just a collection of related processes, typically a
parent process and its children. However you can also group your processes
arbitrarily by setting their group id using Process.setpgrp(new_group_id).

# Spawning Terminal Processes
