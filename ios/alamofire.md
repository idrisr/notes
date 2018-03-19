# Alamofire

## `DataResponse<Any>`

```swift
Alamofire.request(JokeRouter.get(id)) // make request
    .responseJSON { response in       // attach completion handler to convert to json
  }
```


```swift
/// Types adopting the `URLRequestConvertible` protocol can be used to construct URL requests.
public protocol URLRequestConvertible {
    /// Returns a URL request or throws if an `Error` was encountered.
    ///
    /// - throws: An `Error` if the underlying `URLRequest` is `nil`.
    ///
    /// - returns: A URL request.
    func asURLRequest() throws -> URLRequest
}
```

```swift
/// A type used to define how a set of parameters are applied to a `URLRequest`.
public protocol ParameterEncoding {
    /// Creates a URL request by encoding parameters and applying them onto an existing request.
    ///
    /// - parameter urlRequest: The request to have parameters applied.
    /// - parameter parameters: The parameters to apply.
    ///
    /// - throws: An `AFError.parameterEncodingFailed` error if encoding fails.
    ///
    /// - returns: The encoded request.
    func encode(_ urlRequest: URLRequestConvertible, with parameters: Parameters?) throws -> URLRequest
}
```

### `Response` and `Result`
* so often you'll see the networking code split up. one function/completion handler for the response, which is the network piece of it. and another function/completion handlder for the result, which is the body and you can check if it has the right json, format, etc.

Think of the `Response` and `Result` structs as little packages of data that make up
what we get from fetching the response and serializing it into the format that
we want. It’s kind of like when you buy something in person. You hand over your
payment and you get back a few things: your purchase, your change, a receipt, or
maybe an error message like “card declined” or “you’re short 12 cents”. All of
these things make up the response to your purchase.

Alamofire’s structs are similar: `Result` has `.success` and `.failure` cases and
might have what you asked for or an error. `Response` is higher level: it packs up
the `Result` along with all of the other info from the transaction like your
original request and the raw response.

### Router
* basically it creates your requests for you.

### `SessionManager`
* Responsible for creating and managing `Request` objects, as well as their underlying `NSURLSession`.

## abstraction levels
... how it is with code to hook in to web services:

* Somewhere your code has to know about the low level network stuff
* Somewhere it has to handle JSON
* Somewhere it has to work with gists (or whatever your model objects are)
