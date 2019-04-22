# Registers, AMD, iOS focus

[readme](http://www.cs.virginia.edu/~evans/cs216/guides/x86.html)

## x86 register calling convention
### `RDI`
first arg passing register

### `RSI`
second arg passing register

### `RDX`
third arg passing register

### `RCX`
fourth arg passing register

### `RAX`
the return register

```s
# move rbx to rax, then return, which returns rax
_RBX_register:
    movq %rbx, %rax
    ret
```


### `RBX`

### `RSP`
* stack pointer register, 
* points to the head of the stack for a particular thread. 
* head of the stack will grow downwards, 
* will decrement when items are added to the stack. 
* will always point to the head of the stack.

### `RBP`
* multiple uses during a function being executed. 
* Programs use offsets from the `RBP` to access
local variables or function parameters while execution is inside the
method/function. 
* happens because the `RBP` is set to the value of the `RSP`
register at the beginning of a function in the function prologue.

### `R8` - `R15`

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
