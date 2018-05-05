# `SBFrame`

[documentation](https://lldb.llvm.org/python_reference/lldb.SBFrame-class.html)


Represents one of the stack frames associated with a thread.
SBThread contains SBFrame(s). For example (from test/lldbutil.py),

```python
def print_stacktrace(thread, string_buffer = False):
    '''Prints a simple stack trace of this thread.'''

    ...

    for i in range(depth):
        frame = thread.GetFrameAtIndex(i)
        function = frame.GetFunction()

        load_addr = addrs[i].GetLoadAddress(target)
        if not function:
            file_addr = addrs[i].GetFileAddress()
            start_addr = frame.GetSymbol().GetStartAddress().GetFileAddress()
            symbol_offset = file_addr - start_addr
            print >> output, '  frame #{num}: {addr:#016x} {mod}`{symbol} + {offset}'.format(
                num=i, addr=load_addr, mod=mods[i], symbol=symbols[i], offset=symbol_offset)
        else:
            print >> output, '  frame #{num}: {addr:#016x} {mod}`{func} at {file}:{line} {args}'.format(
                num=i, addr=load_addr, mod=mods[i],
                func='%s [inlined]' % funcs[i] if frame.IsInlined() else funcs[i],
                file=files[i], line=lines[i],
                args=get_args_as_string(frame, showFuncName=False) if not frame.IsInlined() else '()')

    ...
```


---
see:
from [here](https://lldb.llvm.org/formats.html)
* `script.target:python_func`	Use a Python function to generate a piece of textual output
* `script.process:python_func`	Use a Python function to generate a piece of textual output
* `script.thread:python_func`	Use a Python function to generate a piece of textual output
* `script.frame:python_func` Use a Python function to generate a piece of textual output

For both thread and frame formats, you can use `${script.target:python_func}`,
`${script.process:python_func}` and `${script.thread:python_func}` (and of course
`${script.frame:python_func}` for frame formats)
In all cases, the signature of `python_func` is expected to be:

```python
def python_func(object,unused):
    ...
    return string
```

Where object is an instance of the `SB class` associated to the keyword you are using.

e.g. Assuming your function looks like

```python
def thread_printer_func (thread,unused):
  return "Thread %s has %d frames\n" % (thread.name, thread.num_frames)
```

And you set it up with
```
(lldb) settings set thread-format "${script.thread:thread_printer_func}"
```

you would see output like:
