# iOS Network Classes

## `URLCredential`

## `URLRequest`

## `URLResponse`

## `URLComponents`

## `URLSession`
The `URLSession` class and related classes provide an API for downloading content.
This API provides a rich set of delegate methods for supporting authentication
and gives your app the ability to perform background downloads when your app
isn’t running or, in iOS, while your app is suspended.

The `URLSession` class natively supports the `data`, `file`, `ftp`, `http`, and
`https` URL schemes, with transparent support for proxy servers and SOCKS
gateways, as configured in the user’s system preferences.

URLSession supports the HTTP/1.1, SPDY, and HTTP/2 protocols. HTTP/2 support is
described by RFC 7540, and requires a server supporting either ALPN or NPN for
protocol negotiation.

## `URLSessionTask`
The `URLSessionTask` class is the base class for tasks in a `URL` session. Tasks
are always part of a session; you create a task by calling one of the task
creation methods on an `URLSession` object. The method you call determines the
type of task.

3 task types
1. data
2. upload
3. download

## `URLCredential`
The URL loading system supports three types of credentials: password-based user
credentials, certificate-based user credentials, and certificate-based server
credentials (used when verifying the server’s identity).

When you create a credential, you can specify that it should be used for a
single request, persisted temporarily (until your app quits), or persisted
permanently (in the keychain).

# url schemes
from [here](https://en.wikipedia.org/wiki/Uniform_Resource_Identifier)

url schemes for [ios](https://developer.apple.com/library/content/featuredarticles/iPhoneURLScheme_Reference/Introduction/Introduction.html)

`scheme:[//[user[:password]@]host[:port]][/path][?query][#fragment]`

Select Account  
PO Box 64193   
St Paul, MN 55164
