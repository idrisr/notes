# Unit Testing

## importing modules
```swift
@testable import MyAppModule
```

This will get you all the `internal`, and `public` methods.

`open` is already available, as `open` is avaiable across module boundaries.

## stub

from [here](https://gaboesquivel.com/blog/2014/unit-testing-mocks-stubs-and-spies/)

Test stubs are fake objects with pre-programmed behavior ( Simulation of
behaviour from other units ), Most of times they are simply returning fixed
values. They are typically used for one of two reasons:

* To avoid some inconvenient interface - for instance to avoid making actual requests to a server from tests.
* To feed the system with known data, forcing a specific code path.

## mock
