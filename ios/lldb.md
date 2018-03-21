# LLDB

[read me](https://developer.apple.com/library/content/documentation/General/Conceptual/lldb-guide/chapters/Introduction.html#//apple_ref/doc/uid/TP40016717-CH1-DontLinkElementID_42
)

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

```bash
(lldb) expr @import UIKit
```
Which will save a lot of subsequent typing:

Note that the app must be linked against the module being used in the `@import`.

### `file`
### `ex`
### `process launch`

* `ex -l swift -- import AppKit`
