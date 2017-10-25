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
