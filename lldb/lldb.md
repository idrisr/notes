# LLDB


[read me](https://developer.apple.com/library/content/documentation/General/Conceptual/lldb-guide/chapters/Introduction.html#//apple_ref/doc/uid/TP40016717-CH1-DontLinkElementID_42
)

[read me](http://www.enharmonichq.com/tutorial-ios-reverse-engineering-lldb/)
[readme](https://medium.com/flawless-app-stories/debugging-swift-code-with-lldb-b30c5cf2fd49)

[watchme from UIKonf](https://www.youtube.com/watch?v=578YdS2sNqk)

* https://eli.thegreenplace.net/2011/01/23/how-debuggers-work-part-1
* https://eli.thegreenplace.net/2011/01/27/how-debuggers-work-part-2-breakpoints
* https://eli.thegreenplace.net/2011/02/07/how-debuggers-work-part-3-debugging-information

## import commands

```bash
command script import /usr/local/opt/chisel/libexec/fblldb.py
```

## remove all commands
```bash
command script clear
```

## reload `.lldbinit`

```bash
(lldb) command source ~/.lldbinit
```

## `@import`
from [here](https://furbo.org/2015/05/11/an-import-ant-change-in-xcode/)


LLDB’s parser for Objective-C can now go through any module used in your app and
determine the types used for all functions and methods it defines. If you’re
using UIKit in your app, you can do this:

#### swift
from [here](https://github.com/facebook/chisel/issues/186)

if it's a swift project, you'll probably want to run `expr import UIKit`, or you
can stick with the objective-c syntax by using `expr -l objc -- @import UIKit`.

```bash
(lldb) expr @import UIKit
```
Which will save a lot of subsequent typing:

Note that the app must be linked against the module being used in the `@import`.

### `file`
### `ex`
### `process launch`

* `ex -l swift -- import AppKit`

# Contexts
* stop in Swift, swift context
* stop in Objc, Objc context
* stop out of the blue, Objc context

## Force the language
from [here](https://stackoverflow.com/questions/37390238/how-can-i-set-lldbs-default-language-to-swift/37398662#37398662)

```
(lldb) settings set target.language swift
```

## Swift memory casting

```swift
lldb> unsafeBitCast(0x60000024d230, to: MyType.self).myProperty
```

## swift by sundell lldb notes
* changes views in runtime
* lldb attach to process
* xcode change target process
* module based imports
* sounds on objects deallocated
* instabug
* launch arguments vs environment variables

## objects
* `SBuild_`

* `SBundle`

* `SBCommandReturnObject`

* `SBError`

* `SBExpressionOptions`

* `SBInputReader`

* [`SBValue`](https://lldb.llvm.org/python_reference/lldb.SBValue-class.html)

## Type Summary
from [here](https://medium.com/itty-bitty-apps/scripting-lldb-with-python-31718eb4e501)

```
type summary add -F iba_lldb.IBARangeSummary IBARange
## in python


```python
lldb.debugger.HandleCommand('script ' + functionName + ' = sys.modules[\'' + module.__name__ + '\']._loadedFunctions[\'' + key + '\']')
lldb.debugger.HandleCommand('command script add --help "{help}" --function {function} {name}'.format(
    help=helpText.replace('"', '\\"'), # escape quotes
    function=functionName,
    name=name))
```

```python
# pulled out of chisel repo with
# ack --no-color -h 'lldb.debugger' | sed "s/^[ \t]*//"| sort -u
address = int(lldb.debugger.GetSelectedTarget().GetProcess().GetSelectedThread().GetSelectedFrame().GetModule().ResolveFileAddress(library_address))
breakpoint = lldb.debugger.GetSelectedTarget().BreakpointCreateByName("-[UIApplication sendEvent:]")
frame = lldb.debugger.GetSelectedTarget().GetProcess().GetSelectedThread().GetSelectedFrame()
frameStartAddress = frameSymbol.GetStartAddress().GetLoadAddress(lldb.debugger.GetSelectedTarget())
initialAsync = lldb.debugger.GetAsync()
interpreter = lldb.debugger.GetCommandInterpreter()
lldb.debugger.HandleCommand("po " + command)
lldb.debugger.HandleCommand('breakpoint command add -s python -F "sys.modules[\'' + __name__ + '\'].' + self.__class__.__name__ + '.taplog_callback" ' + str(breakpoint.id))
lldb.debugger.HandleCommand('breakpoint set --address {}'.format(address))
lldb.debugger.HandleCommand('breakpoint set --skip-prologue false --fullname "{}" --condition "{}"'.format(breakpointFullName, breakpointCondition))
lldb.debugger.HandleCommand('breakpoint set --skip-prologue false --func-regex "{}" --condition "{}"'.format(breakpointPattern, breakpointCondition))
lldb.debugger.HandleCommand('caflush')
lldb.debugger.HandleCommand('command script add --help "{help}" --function {function} {name}'.format(
lldb.debugger.HandleCommand('continue')
lldb.debugger.HandleCommand('expression -O -l ObjC++ -- ' + expression)
lldb.debugger.HandleCommand('p (BOOL)[UIView _isInAnimationBlock]')
lldb.debugger.HandleCommand('p (CGFloat)[(id)[(id)[UIApplication sharedApplication] keyWindow] windowLevel]')
lldb.debugger.HandleCommand('process continue')
lldb.debugger.HandleCommand('process interrupt')
lldb.debugger.HandleCommand('script ' + functionName + ' = sys.modules[\'' + module.__name__ + '\']._loadedFunctions[\'' + key + '\']')
lldb.debugger.HandleCommand('thread return')
lldb.debugger.HandleCommand(command)
lldb.debugger.SetAsync(True)
lldb.debugger.SetAsync(True) #Needed so XCode doesn't hang if tap on Continue while lldb is waiting for user input in 'vs' mode
lldb.debugger.SetAsync(initialAsync)
process = lldb.debugger.GetSelectedTarget().GetProcess()
return lldb.debugger.GetSelectedTarget().GetProcess().GetSelectedThread().GetSelectedFrame().GetCompileUnit().GetLanguage()
target = lldb.debugger.GetSelectedTarget()
targetTriple = lldb.debugger.GetSelectedTarget().GetTriple()
watchpoint = lldb.debugger.GetSelectedTarget().WatchAddress(objectAddress + ivarOffset, ivarSize, False, True, error)
```

## Skip lines while running
```
thread jump --by 1
```

## Print func args in assembly frames
```
po $arg1
po $arg2
```

## flush view changes to screen
```
expression CATransaction.flush()
```


## Load a binary image
```python
# from reveal
self.process.LoadImage(lldb.SBFileSpec(path), error)
```

## Evaluate an expression
```python
# evaluates expression in Objective-C++ context, so it will work even for
# Swift projects
# from chisel
def evaluateExpressionValue(expression, printErrors=True, language=lldb.eLanguageTypeObjC_plus_plus):
    frame = lldb.debugger.GetSelectedTarget().GetProcess().GetSelectedThread().GetSelectedFrame()
    options = lldb.SBExpressionOptions()
    options.SetLanguage(language)

    # Allow evaluation that contains a @throw/@catch.
    #   By default, ObjC @throw will cause evaluation to be aborted. At the time
    #   of a @throw, it's not known if the exception will be handled by a @catch.
    #   An exception that's caught, should not cause evaluation to fail.
    options.SetTrapExceptions(False)

    # Give evaluation more time.
    options.SetTimeoutInMicroSeconds(5000000) # 5s

    # Chisel commands are not multithreaded.
    options.SetTryAllThreads(False)

    value = frame.EvaluateExpression(expression, options)
    error = value.GetError()

    # Retry if the error could be resolved by first importing UIKit.
    if (error.type == lldb.eErrorTypeExpression and
        error.value == lldb.eExpressionParseError and
        importModule(frame, 'UIKit')):
        value = frame.EvaluateExpression(expression, options)
        error = value.GetError()

    if printErrors and not isSuccess(error):
        print error
```

# Remote Debugging

* [readme](https://kov4l3nko.github.io/blog/2018-05-25-my-experience-with-lldb-and-electra-jb/)
* [andme](https://blog.securityevaluators.com/debugging-ios-applications-a-guide-to-debug-other-developers-apps-c041311498eb)
