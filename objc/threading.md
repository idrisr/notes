`@synchronized`

[from](https://developer.apple.com/library/content/documentation/Cocoa/Conceptual/Multithreading/ThreadSafety/ThreadSafety.html#//apple_ref/doc/uid/10000057i-CH8-SW3)

## Using the `@synchronized` Directive
The `@synchronized` directive is a convenient way to create mutex locks on the fly
in Objective-C code. The `@synchronized` directive does what any other mutex lock
would do—it prevents different threads from acquiring the same lock at the same
time. In this case, however, you do not have to create the mutex or lock object
directly. Instead, you simply use any Objective-C object as a lock token, as
shown in the following example:

```objc
- (void)myMethod:(id)anObj
{
    @synchronized(anObj)
    {
        // Everything between the braces is protected by the @synchronized directive.
    }
}
```

The object passed to the `@synchronized` directive is a unique identifier used
to distinguish the protected block. If you execute the preceding method in two
different threads, passing a different object for the `anObj` parameter on each
thread, each would take its lock and continue processing without being blocked
by the other. If you pass the same object in both cases, however, one of the
threads would acquire the lock first and the other would block until the first
thread completed the critical section.

As a precautionary measure, the `@synchronized` block implicitly adds an
exception handler to the protected code. This handler automatically releases the
mutex in the event that an exception is thrown. This means that in order to use
the `@synchronized` directive, you must also enable Objective-C exception handling
in your code. If you do not want the additional overhead caused by the implicit
exception handler, you should consider using the lock classes.

For more information about the `@synchronized` directive, see The Objective-C Programming Language.

## mutex lock
In computer science, a lock or mutex (from mutual exclusion) is a
synchronization mechanism for enforcing limits on access to a resource in an
environment where there are many threads of execution. A lock is designed to
enforce a mutual exclusion concurrency control policy.
