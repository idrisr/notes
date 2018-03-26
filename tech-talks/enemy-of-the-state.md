# Enemy of the State
from [here](https://github.com/jspahrsummers/enemy-of-the-state/tree/funswiftconf-2014)


* state is a glorified cache
* cache invalidation is really hard

* We consider things “easy” when we already mostly know them, or can pick them
up quickly.
* However, simplicity has a stricter criterion: it has to involve as few
concepts as possible. It has to minimize the number of different things you
need to think about.

* State is complex because it mixes together completely unrelated components of
your application. When the state of one component depends on the state of
another, and so on all of them have gotten coupled and tied together, when
they don’t need to be. This is usually where state “goes bad.”

* To use another example, it’s definitely easy to put model data into
dictionaries instead of creating purpose-specific classes. Everyone
understands dictionaries, and creating them takes less effort, but ultimately
they make your code more complex and error-prone (for example, if you expect a
dictionary in one format but get something else).

# Complexity
* Essential complexity is part of the problem you’re trying to solve. Connecting
to the internet, for example, exposes you to all the complexity of networking.

* Incidental complexity is not actually necessary. It arises because of
application architecture, design choices, etc. State falls into this category,
because its complexity is avoidable.

* objects should have only one reason to change


## Done Wrong
```swift
class MyViewController UIVieController {
  // When logging in
  var username: String?
  var password: String?

  // After logging in
  var loggedInUser: User?
}
```

## Done Better
```swift
class LoginViewModel {
  var username: String?
  var password: String?

  func login() -> UserViewModel?
}
```
```Swift
class UserViewModel {
  var loggedinUser: User?
}
```

* Stateless core, stateful shell
* See Gary Bernhardt, "Boundaries"
* business logic in the values
* when you need to do GUI stuff, user input, etc, go stateful
