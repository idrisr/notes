# Ways to abort

from [here](https://agostini.tech/2017/10/01/assert-precondition-and-fatal-error-in-swift/)


## Compiler Optimization Levels

```
-Onone (default for debug builds)
-O (default for release builds)
-Ounchecked
```

## `assert()`
* `-Onone`

## `assertionFailure()`
* `-Onone`

## `precondition()`
* `-Onone`
* `-O`

## `preconditionFailure()`
* `-Onone`
* `-O`

## `fatalError()`
* always runs
