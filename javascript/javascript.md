# JavaScript

it can be avoided no longer `:/`

## XMLHttpRequest

basically it's used to do `AJAX`

Use `XMLHttpRequest` objects to interact with servers. You can retrieve data from
a URL without having to do a full page refresh. This enables a Web page to
update just part of a page without disrupting what the user is doing.
`XMLHttpRequest` is used heavily in Ajax programming.

Despite its name, `XMLHttpRequest` can be used to retrieve any type of data, not
just XML, and it supports protocols other than `HTTP` (including `file` and `ftp`).


```javascript
function makeRequest(id, url, method) {
    // The constructor initializes an XMLHttpRequest. It must be called before any other method calls.
    var xhr = new XMLHttpRequest();

    //Initializes a request.
    xhr.open(method, url, true);
    // Sets the value of an HTTP request header. You must call setRequestHeader()after open(), but before send().
    xhr.setRequestHeader("Content-Type", "application/json");

    // add event handler for after resource loaded
    xhr.addEventListener("load", transferComplete)

    if (method === "PUT") {
        xhr.send(getJSONData(id));
    } else if (method === "POST") {
        xhr.send(getCreateJSONData());
    } else {
        xhr.send()
    }
}
```

### `location`

The `Location` interface represents the `location` (URL) of the object it is linked
to. Changes done on it are reflected on the object it relates to. Both the
`Document` and `Window` interface have such a linked `Location`, accessible via
`Document.location` and `Window.location` respectively.

### language details
* uses reference counting
* weakly typed
