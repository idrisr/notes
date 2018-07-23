# Grand Central Dispatch

todo grok me https://developer.apple.com/library/content/documentation/General/Conceptual/ConcurrencyProgrammingGuide/Introduction/Introduction.html

## `dispatch_once`

Executes a block object once and only once for the lifetime of an application.

## `DispatchGroup`

`DispatchGroup` allows for aggregate synchronization of work. You can use them to
submit multiple different work items and track when they all complete, even
though they might run on different queues. This behavior can be helpful when
progress can’t be made until all of the specified tasks are complete.




## `DispatchQueue`

`DispatchQueue` manages the execution of work items. Each work item submitted to a
queue is processed on a pool of threads managed by the system.

# Queue Types

from [here](https://developer.apple.com/library/content/documentation/General/Conceptual/ConcurrencyProgrammingGuide/OperationQueues/OperationQueues.html#//apple_ref/doc/uid/TP40008091-CH102-SW2)

## Serial
Serial queues (also known as private dispatch queues) execute one task at a time
in the order in which they are added to the queue. The currently executing task
runs on a distinct thread (which can vary from task to task) that is managed by
the dispatch queue. Serial queues are often used to synchronize access to a
specific resource. You can create as many serial queues as you need, and each
queue operates concurrently with respect to all other queues. In other words, if
you create four serial queues, each queue executes only one task at a time but
up to four tasks could still execute concurrently, one from each queue. For
information on how to create serial queues, see Creating Serial Dispatch Queues.

## Concurrent
Concurrent queues (also known as a type of global dispatch queue) execute one or
more tasks concurrently, but tasks are still started in the order in which they
were added to the queue. The currently executing tasks run on distinct threads
that are managed by the dispatch queue. The exact number of tasks executing at
any given point is variable and depends on system conditions. In iOS 5 and
later, you can create concurrent dispatch queues yourself by specifying
`DISPATCH_QUEUE_CONCURRENT` as the queue type. In addition, there are four
predefined global concurrent queues for your application to use. For more
information on how to get the global concurrent queues, see Getting the Global
Concurrent Dispatch Queues.

```swift
DISPATCH_QUEUE_PRIORITY_DEFAULT
DISPATCH_QUEUE_PRIORITY_HIGH
DISPATCH_QUEUE_PRIORITY_LOW
DISPATCH_QUEUE_PRIORITY_BACKGROUND
```

## Main dispatch queue
The main dispatch queue is a globally available serial queue that executes tasks
on the application’s main thread. This queue works with the application’s run
loop (if one is present) to interleave the execution of queued tasks with the
execution of other event sources attached to the run loop. Because it runs on
your application’s main thread, the main queue is often used as a key
synchronization point for an application. Although you do not need to create the
main dispatch queue, you do need to make sure your application drains it
appropriately. For more information on how this queue is managed, see Performing
Tasks on the Main Thread.

## Misc
* It’s important to note that parallelism requires concurrency, but concurrency
does not guarantee parallelism.

* Tasks that you submit to a `DispatchQueue` are encapsulated by `DispatchWorkItem`.
You can configure the behavior of a `DispatchWorkItem` such as its QoS class or
whether to spawn a new detached thread.
