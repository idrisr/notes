# Flask Web Dev


All Flask applications must create an application instance

web server passes all requests it receives to this object for handling via `WSGI`.

## `__name__`

```python
from flask import Flask
app = Flask(__name__) # name used to determine

```

## webservers
the webserver provided by flask is not intended for production use

## `request` object
encapsulates the HTTP request

## `contexts`
to avoid cluttering functions with lots of arguments, flask uses `contexts` which make certain objects globally accessible.
Contexts enable Flask to make certain variables globally accessible to a thread without interfering with the other threads.

### two contexts

#### application context

`current_app`
The application instance for the active application.

`g`
An object that the application can use for temporary storage during the handling
of a request. This variable is reset with each request.
request

#### request context
`request`
object, which encapsulates the contents of a HTTP request sent by the client.

`session`
The user session, a dictionary that the application can use to store values that
are “remembered” between requests.


#### `push` and `pop`

```python
>>> app_ctx = app.app_context()
>>> app_ctx.push()
>>> current_app.name
'hello'
>>> app_ctx.pop()
```

### mapping
```python
from hello import app
app.url_map
```

## threading
A thread is the smallest sequence of instructions that can be managed
independently. It is common for a process to have multiple active threads,
sometimes sharing resources such as memory or file handles. Multithreaded web
servers start a pool of threads and select a thread from the pool to handle each
incoming request.

### request hooks
* `before_first_request`
* `before_request`
* `after_request`
* `teardown_request`


### command line options

```shell
pip install flask-script
```

### bootstrap
```shell
pip install flask-bootstrap
```

### error handling
```python
@app.errorhandler(500)
def page_not_found(e):
  return render_template('500.html'), 500

@app.errorhandler(404)
def page_not_found(e):
  return render_template('404.html'), 404
```

### extensions
* `flask-script` - command line options things
* `flask-bootstrap` - bootstrap thing
* `flask-moment` - time localization
* `flask-wtf` - forms
* `flask-sqlalchemy` - sql alchemy
* `flask-migrate` - model migrations
* `flask-mail` - email


## blueprints
it's kind of like creating a protocol that you say your app adheres too, i think ...
