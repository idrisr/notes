# `dsym`

from [here](https://lldb.llvm.org/symbols.html)

On MacOSX, debug symbols are often in stand alone bundles called dSYM files.
These are bundles that contain DWARF debug information and other resources
related to builds and debug info.

The DebugSymbols.framework framework helps locate dSYM files when given a UUID.
It can locate the symbols using a variety of methods:

* Spotlight
* Explicit search paths
* Implicit search paths
* File mapped UUID paths
* Running one or more shell scripts

DebugSymbols.framework also has global defaults that can be modified to allow
all of the debug tools (lldb, gdb, sample, CoreSymbolication.framework) to
easily find important debug symbols.  The domain for the DebugSymbols.framework
defaults is com.apple.DebugSymbols, and the defaults can be read, written or
modified using the defaults shell command:

    % defaults read com.apple.DebugSymbols
    % defaults write com.apple.DebugSymbols KEY ...  
    % defaults delete com.apple.DebugSymbols KEY

# Debug Symbols    

from [here](https://en.wikipedia.org/wiki/Debug_symbol)

A debug symbol is a special kind of symbol that attaches additional information
to the symbol table of a object file, such as a shared library or an
executable. This information allows a symbolic debugger to gain access to
information from the source code of the binary, such as the names of
identifiers, including variables and routines.  The symbolic information may be
compiled together with the module's binary file, or distributed in a separate
file, or simply discarded during the compilation and/or linking.  This
information can be helpful while trying to investigate and fix a crashing
application or any other fault.
