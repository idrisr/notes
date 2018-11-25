# Future

* wrapper around a closure

* `init` the `future` with a closure `A`
* the closure `A` is the actual work you want to do
* `A` takes in some `B`, which it calls when done with it's async work
* the `B` wraps callbacks `C`s interested in the work from `A`
