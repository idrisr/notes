//: [Intro](@previous)


# Handling Errors

 When an error is thrown, some surrounding piece of code must be responsible for handling the error—for example, by correcting the problem, trying an alternative approach, or informing the user of the failure.

 There are four ways to handle errors in Swift.

 1. You can propagate the error from a function to the code that calls that function,
 1. handle the error using a do-catch statement,
 1. handle the error as an optional value,
 1. or assert that the error will not occur. Each approach is described in a section below.

When a function throws an error, it changes the flow of your program, so it’s
important that you can quickly identify places in your code that can throw
errors. To identify these places in your code, write the `try` keyword—or the
`try?` or `try!` variation—before a piece of code that calls a function, method, or
initializer that can throw an error. These keywords are described in the
sections below.


## Propagating Errors Using Throwing Functions

To indicate that a function, method, or initializer can throw an error, you write the throws keyword in the function’s declaration after its parameters. A function marked with throws is called a throwing function. If the function specifies a return type, you write the throws keyword before the return arrow (->).


```swift
import Foundation

public func canThrowErrors(_ toThrow: Bool) throws -> String {
    // propogate the error up
    if toThrow {
        throw VendingMachineError.outOfStock
    } else {
        return "YO"
    }
}
```

## handle the error directly

```swift
public func handleAnError() {
    do {
        try canThrowErrors(true)
    } catch let e as VendingMachineError {
        print("\(e)")
    } catch {
        print ("some other error")
    }
}
```

## Ignore the error
```swift
public func ignoreTheError() {
    let myString = try? canThrowErrors(true)
    print(myString)
}

// prints nil
ignoreTheError()
```

## Hope for the best, force unwrap
```swift
public func justHopeForTheBest() {
    let myString = try! canThrowErrors(true)
    print(myString)
}

// prints nil
justHopeForTheBest()
```

## Can't throw errors
```swift
public func cannotThrowErrors() -> String {
    return "dude"
}
```

## Throw NSError
```swift
public func throwNSError() throws {
    throw NSError()
}

public func catchNSError() throws {
    do {
        try throwNSError()
    } catch let e as NSError {
       throw VendingMachineError.systemError(error: e)
    }
}
```

## `rethrows`

Annotating a function with `rethrows` tells the compiler that this function will only throw an error when its function parameter throws an error. This allows the compiler to waive the requirement that call must be called with try when the caller passes in a non-throwing check function:

```swift
extension Sequence {
  func all(condition: (Iterator.Element) throws -> Bool) rethrows -> Bool {
    for element in self {
      guard try condition(element) else { return false }
    }
    return true
  }
}
```
