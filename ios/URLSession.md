# `URLSession`

* coordinates network tasks

## session types
* default
* shared
* ephemeral
* background


## methods
* `func dataTask(with url: URL) -> URLSessionDataTask`
  * all you get to pass in is a URL. Can't configure your request

* `func dataTask(with: URLRequest)``
  * here you get to define the full request
