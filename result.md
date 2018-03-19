# `Result`

gives you typed result from a call. That was you can handle all cases. Unlike a
`throw` where you don't know exactly what errors you will have to `catch` and
unlike returning an optional where there are many potential reasons for
receiving back `nil`.

```swift
enum Result<A> {
    case success(A)
    case failure(Error)
}
```


this construct is used for example in Alamofire [here](https://github.com/Alamofire/Alamofire/blob/6d9b4885fbd7837861c5216d2ae4a1131e599f30/Source/Result.swift#L34)

# `Result` µframework

This is a Swift µframework providing `Result<Value, Error>`.

`Result<Value, Error>` values are either successful (wrapping `Value`) or failed
(wrapping `Error`). This is similar to Swift’s native `Optional` type: success is
like `some`, and failure is like `none` except with an associated `Error` value. The
addition of an associated `Error` allows errors to be passed along for logging or
displaying to the user.

Using this µframework instead of rolling your own `Result` type allows you to
easily interface with other frameworks that also use `Result`.
