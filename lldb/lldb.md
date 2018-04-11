# LLDB

[read me](https://developer.apple.com/library/content/documentation/General/Conceptual/lldb-guide/chapters/Introduction.html#//apple_ref/doc/uid/TP40016717-CH1-DontLinkElementID_42
)

[read me](http://www.enharmonichq.com/tutorial-ios-reverse-engineering-lldb/)

[readme](https://medium.com/flawless-app-stories/debugging-swift-code-with-lldb-b30c5cf2fd49)

https://eli.thegreenplace.net/2011/01/23/how-debuggers-work-part-1
https://eli.thegreenplace.net/2011/01/27/how-debuggers-work-part-2-breakpoints
https://eli.thegreenplace.net/2011/02/07/how-debuggers-work-part-3-debugging-information

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
