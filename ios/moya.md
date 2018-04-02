# Moya

from [here](https://github.com/Moya)

## `TargetType`
the router

```swift
public protocol TargetType {
    var baseURL: URL { get }
    var path: String { get }

    /// The HTTP method used in the request.
    var method: Moya.Method { get }

    /// Provides stub data for use in testing.
    var sampleData: Data { get }

    /// The type of HTTP task to be performed.
    var task: Task { get }

    /// The type of validation to perform on the request. Default is `.none`.
    var validationType: ValidationType { get }

    /// The headers to be used in the request.
    var headers: [String: String]? { get }
}
```


## `ValidationType`
the status codes to validate through Alamofire

## `Response`
```swift
public final class Response: CustomDebugStringConvertible, Equatable {
    /// The status code of the response.
    public let statusCode: Int
    /// The response data.
    public let data: Data
    /// The original URLRequest for the response.
    public let request: URLRequest?
    /// The HTTPURLResponse object.
    public let response: HTTPURLResponse?
```

## `Result<T, Error>`
```swift
/// An enum representing either a failure with an explanatory error, or a success with a result value.
public enum Result<T, Error> : ResultProtocol, CustomStringConvertible, CustomDebugStringConvertible where Error : Error {
```
