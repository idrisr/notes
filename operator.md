# Operator Declaration

from [here](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/Declarations.html#//apple_ref/doc/uid/TP40014097-CH34-ID380)

An operator declaration introduces a new infix, prefix, or postfix operator into your program and is declared using the operator keyword.

You can declare operators of three different fixities: infix, prefix, and postfix. The fixity of an operator specifies the relative position of an operator to its operands.

There are three basic forms of an operator declaration, one for each fixity. The fixity of the operator is specified by marking the operator declaration with the infix, prefix, or postfix declaration modifier before the operator keyword. In each form, the name of the operator can contain only the operator characters defined in Operators.

# Precedence

A precedence group declaration introduces a new grouping for infix operator precedence into your program. The precedence of an operator specifies how tightly the operator binds to its operands, in the absence of grouping parentheses.

A precedence group declaration has the following form:

```swift
precedencegroup precedence group name {
    higherThan: *lower group names*
    lowerThan: *higher group names*
    associativity: *associativity*
    assignment: *assignment*
}
```
