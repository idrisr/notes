# Future

* wrapper around a closure

* `init` the `future` with a closure `A`
* the closure `A` is the actual work you want to do, like a network request
* `A` takes in some `B`, which it calls when done with it's async work
* the `B` then `foreach`'s around the callbacks `C`s interested in the work from `A`


## Future vs Promise

roughly speaking a
* you make a `promise`, and you can `fail` or `fulfill` on it
* a future is like a `promise` that someone else makes, ie it's `readonly` and
all you can do is wait for it.