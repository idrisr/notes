# HTTP Header fields

from [here](https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html)


### `if-match`
The `If-Match` request-header field is used with a method to make it conditional.
A client that has one or more entities previously obtained from the resource can
verify that one of those entities is current by including a list of their
associated entity tags in the `If-Match` header field. Entity tags are defined in
section 3.11. The purpose of this feature is to allow efficient updates of
cached information with a minimum amount of transaction overhead. It is also
used, on updating requests, to prevent inadvertent modification of the wrong
version of a resource. As a special case, the value `"*"` matches any current
entity of the resource

### `cache-control`

`max-age=<seconds>`
Specifies the maximum amount of time a resource will be considered fresh.
Contrary to `Expires`, this directive is relative to the time of the request.
