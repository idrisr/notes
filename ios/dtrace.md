# DTrace

top 10 dtrace scripts for [mac osx](http://dtrace.org/blogs/brendan/2011/10/10/top-10-dtrace-scripts-for-mac-os-x/)

```
# list options without number suffix
sudo dtrace -l | awk '{print $2}' | sed 's/[0-9]*//g' | sort -u | cat -n
```

## probes


## Examples

### objc view controller
* dump out every hit (aka `probe`) that contains the Objective-C class
name that ends with `ViewController`


```bash
# -n {name}
# -p {process}

sudo dtrace -n 'objc$target:*ViewController::entry' -p `pgrep -i SpringBoard`
```


### match `viewWillAppear`
* will only match `-[UIViewController viewWillAppear:]`

```bash
sudo dtrace -n 'objc$target:UIViewController:-viewWillAppear?:entry
{ ustack(); }' -p `pgrep SpringBoard`
```


### Built-ins

#### `ustack()`
* dumps the userland stack trace when the method gets hit.

## Terminology

### Probes
* probes are events that DTrace can monitor either in a specific process or globally across across your computer.
* four-tuple
* `provider`:`module`:`function`:`name`


#### Provider
* grouping of code or common functionality

* A provider. This is the entity that provides access to classes of functions. A
common provider is `syscall`, which lets you trace Unix system calls like read and
write system-wide. There’s another provider called pid that lets you trace
functions inside of a particular program. You’ll see that in part 2. The objc
provider lets you poke around in Objective-C land, and you’ll see that in part
3. There’s a lot of other providers available, too.

### Module
In the `objc` provider, the module section is where you specify the class name you
wish to observe. Using the `objc` provider is a little unique in this sense,
because typically the module is used to reference a library in which the code is
coming from. In fact, in some providers, there’s no module at all! However, the
authors of the `objc` provider chose to use the module to reference the Objective-
C classname. For this particular example, the module is `NSObject`.

This depends on the provider. Some providers don’t have modules. Some providers
let you specify a particular shared library in the module. Perhaps you only
wanted to trace some functions inside of libxm2.dylib - you could put that in
the module.

### Function
This is the name of the function you want to pay attention to.

### Name
The name also depends on the provider, but most let you specify entry, to run
some D code before the function starts running or return to run some D code
after the function has exited.


```
# {provider}:{module}:{function}:{name}
# {provider}
# {module}
# {function}
# {name}

dtrace -n 'objc$target:NSObject:-description:entry / arg0 = 0 / { @[probemod] = count(): }' -p `pgrep SpringBoard`
```

## background

from [here](https://www.bignerdranch.com/blog/hooked-on-dtrace-part-1/)


You command DTrace by writing code in the “D Language”, which is not related to
that other D Language. DTrace’s D is a scripting language that has a strong C
flavor, so much of C is available to you. It gets compiled by the dtrace command
into bytecode, shipped to the kernel, where it runs. It’s run in a safe mode to
minimize impact on the system, so there’s no looping , branch statements, or
floating point operations.

## samples


```bash
# use -v to find probe arguments
sudo dtrace -lv -f syscall:freebsd:read
```

## challenge
* list files touched by Instruments process

## existing DTrace scripts

```sh
/usr/bin  ack -l dtrace | cat -n
     1  bitesize.d
     2  cpu_profiler.d
     3  cpuwalk.d
     4  creatbyproc.d
     5  dappprof
     6  dapptrace
     7  diskhits
     8  dispqlen.d
     9  dtruss
    10  errinfo
    11  execsnoop
    12  fddist
    13  filebyproc.d
    14  hotspot.d
    15  httpdstat.d
    16  imptrace
    17  iofile.d
    18  iofileb.d
    19  iopattern
    20  iopending
    21  iosnoop
    22  iotop
    23  kill.d
    24  lastwords
    25  loads.d
    26  newproc.d
    27  opensnoop
    28  pathopens.d
    29  pidpersec.d
    30  power_report.sh
    31  priclass.d
    32  pridist.d
    33  procsystime
    34  runocc.d
    35  rwbypid.d
    36  rwbytype.d
    37  rwsnoop
    38  sampleproc
    39  seeksize.d
    40  setuids.d
    41  sigdist.d
    42  syscallbypid.d
    43  syscallbyproc.d
    44  syscallbysysc.d
    45  timer_analyser.d
    46  timerfires
    47  topsyscall
    48  topsysproc
    49  weblatency.d
```
