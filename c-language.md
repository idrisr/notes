

### `extern`  
In the C programming language, an external variable is a variable defined outside any function block

### `const`
The qualifier `const` can be applied to the declaration of any variable to specify
that its value will not be changed.

The qualifier `const` can be applied to the declaration of any variable to specify
that its value will not be changed. `const` keyword applies to whatever is
immediately to its left. If there is nothing to its left, it applies to whatever
is immediately to its right.

```C
// C program to illustrate
// char const *p
#include<stdio.h>
#include<stdlib.h>

int main()
{
    char a ='A', b ='B';
    const char *ptr = &a;

    //*ptr = b; illegal statement (assignment of read-only location *ptr)

    // ptr can be changed
    printf( "value pointed to by ptr: %c\n", *ptr);
    ptr = &b;
    printf( "value pointed to by ptr: %c\n", *ptr);
}
```

```c
struct rebinding {
  const char *name;
  void *replacement;
  void **replaced;
};
```

### Pointer
A pointer points to a location in memory and thus used to
store address of variables.


#### Double Pointer
The first pointer is used to store the address of second pointer. That is why
they are also known as double pointers.


## functions
```c
return_type function_name( parameter list ) {
   body of the function
}

/* function returning the max between two numbers */
int max(int num1, int num2) {

   /* local variable declaration */
   int result;

   if (num1 > num2) {
      result = num1;
    } else {
      result = num2;
    }

   return result;
}
```

## `size_t`

`size_t` is an unsigned data type defined by several C/C++ standards, e.g. the C99 ISO/IEC 9899 standard, that is defined in stddef.h.1 It can be further imported by inclusion of stdlib.h as this file internally sub includes stddef.h.

This type is used to represent the size of an object. Library functions that take or return sizes expect them to be of type or have the return type of `size_t`. Further, the most frequently used compiler-based operator sizeof should evaluate to a constant value that is compatible with `size_t`.
