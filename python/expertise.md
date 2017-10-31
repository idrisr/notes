# Expert Level Python

according to some guy on youtube James Powell  
PyData Seattle 7/5/2017  
he claims that python is a protocol oriented language  
python is quite simple, runs top to bottom  linearly  
almost every statement you see is executable runtime code  



## data model methods
google it   
`__method__`  
a means by which you can implement some protocol  
depends on the object itself  

we get some top level syntax or top level function to implement that protocol

`__call__`

## Three patterns to grok for OOP Python

### protocol view
### builtin inheritance model, where you go to look for things on an object
### caveats around how OOP works

# Metaclasses
seen in the django ORM  

leading us to 3 other features that are more interesting

1. decorators
1. generators
1. context managers


`__build_class__` todo grok

you can hook into everything. importing modules, creating classes ...

## two fundamental ways of enforcing constraint from base class to derived class

### metaclasses

some decorators in the `Collection.abc` package that allow you to mark certain
properties as `@abstract`, ie required

pretty much every use is some base class enforcing constraints on the subclass

### decorators

todo closure object duality?
todo - write a timer function
todo - write an n-times decorator

## generators
eagerness vs laziness divide

instead of eagerly evaluating everying, you lazily give them one at a time

top level functions, or top level syntax, have some corresponding underscore
methods that implement it

generators are way to write code which interleaves with other code while
enforcing sequencing

co-routine

sub-routine

## Context Manager
the idea is that there some setup and teardown and that you want to combine them
together
