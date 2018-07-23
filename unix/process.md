# Process


```bash
get the pid in Bash
$$
```

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
