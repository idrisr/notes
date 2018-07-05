# Registers, AMD, iOS focus

## `RAX`
* the return register

## `je`

jump. usually after a control flow branch

## `RBX`
## `RCX`
## `RDX`

## `RDI`
first arg passing register?

## `RSI`
second arg passing register?

## `RSP`
The stack pointer register, `RSP`, points to the head of the stack for a
particular thread. The head of the stack will grow downwards, so the `RSP` will
decrement when items are added to the stack. The `RSP` will always point to the
head of the stack.

## `RBP`
The other important register, the base pointer register `RBP`, has multiple uses
during a function being executed. Programs use offsets from the `RBP` to access
local variables or function parameters while execution is inside the
method/function. This happens because the `RBP` is set to the value of the `RSP`
register at the beginning of a function in the function prologue.



## `R8` - `R15`

## Function Call
The following registers are used as parameters when a function is called in x64 assembly. Try and commit these to memory, as you’ll use these frequently in the future:

- FirstArgument:`RDI`
- SecondArgument:`RSI`
- ThirdArgument:`RDX`
- FourthArgument:`RCX`
- FifthArgument:`R8`
- SixthArgument:`R9`

## objc
* In Objective-C, the `RDI` register is the reference of the calling
`NSObject`, `RSI` is the Selector, `RDX` is the first parameter and so
on.
