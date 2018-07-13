* from [here](http://alisoftware.github.io/swift/2015/10/17/lets-talk-about-monads/)

* [readme](http://www.javiersoto.me/)

# Functor

* intuitively, `map` doesn't change the container. The container might be `Optional`, `Array`, `Result` or whatever. `map` doesnt change that and instead changes the

* A Functor is any type that implements map. That’s the whole story.

A `functor` is a type, denoted by `Type<T>`, that:

* wraps another inner type (like `Array<T> `or `Optional<T>` are wrapping some `T`)
* has a method map with the signature: `(T->U) -> Type<U>`

```swift
Type<T> ➜ func map (T -> U) -> Type<U>
```

# Monad

A `monad` is a type that:

* is a functor (so it has an inner type `T` and a proper `map` method)
* also has a method `flatMap` with the signature `(T->Type<U>) -> Type<U>`

```swift
Type<T> ➜ func flatMap (T -> Type<U>) -> Type<U>
```

## Promise
a `Promise` is also a `monad`

In practice, those methods can have other names than `map` and `flatMap`. For
example, a Promise is also a Monad, but both the `map` and `flatMap`-like methods
are instead called then.


```swift
// Array, Optional, Promise, Result are all Functors
   Array<T> ➜ func     map( transform: T ->          U  ) ->    Array<U>
Optional<T> ➜ func     map( transform: T ->          U  ) -> Optional<U>
 Promise<T> ➜ func    then( transform: T ->          U  ) ->  Promise<U>
  Result<T> ➜ func     map( transform: T ->          U  ) ->   Result<U>
```

```swift
// Array, Optional, Promise, Result are all Monads
   Array<T> ➜ func flatMap( transform: T ->    Array<U> ) ->    Array<U>
Optional<T> ➜ func flatMap( transform: T -> Optional<U> ) -> Optional<U>
 Promise<T> ➜ func    then( transform: T ->  Promise<U> ) ->  Promise<U>
  Result<T> ➜ func flatMap( transform: T ->   Result<U> ) ->   Result<U>
```
