# Context

from https://en.wikipedia.org/wiki/Context_(computing)

In computer science, a task context is the minimal set of data used by a task
(which may be a process or thread) that must be saved to allow a task to be
interrupted, and later continued from the same point. The concept of context
assumes significance in the case of interruptible tasks, wherein, upon being
interrupted, the processor saves the context and proceeds to serve the interrupt
service routine. Thus, the smaller the context is, the smaller the latency is.
The context data may be located in processor registers, memory used by the task,
or in control registers used by some operating systems to manage the task.
