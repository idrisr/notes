# `.pch` file

It's a precompilation header.

In Xcode, you add imports of the header files you want in a “prefix header,” and enabling Precompile Prefix Header so they get precompiled. But the idea behind a prefix header is different from precompiling.

A prefix header is implicitly included at the start of every source file. It’s like each source file adds

`#import "Prefix.pch"` at the top of the file, before anything else.
