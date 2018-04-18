# Type Erasure

* [readme](https://mikeash.com/pyblog/friday-qa-2017-12-08-type-erasure-in-swift.html)
https://krakendev.io/blog/generic-protocols-and-their-shortcomings

# moar
* from [here](https://academy.realm.io/posts/tryswift-gwendolyn-weston-type-erasure/)

## concrete type
```swift
let concreteInt = 42
let concreteArray = ["much", "concrete", "wow"]
```

## abstract type
```swift
class GenericClass<T> { ... }
let object: GenericClass<T> // error

struct GenericStruct<U> { ... }
let object: GenericStruct<U> // error
```

## How To Make Abstract Types Concrete?
* type reification

```swift
class GenericClass<T> { ... }
let StringClass: GenericClass<String> // reify

struct GenericStruct<T> { ... }
let IntStruct: GenericStruct<Int>     // reify
```

## PATs
a `protocol` with an `associatedtype` is an abstract type, and there you can't
instantiate using it. You can only use it as a type constraint.
