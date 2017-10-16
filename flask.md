# Flask

Flask is a python web microframework

## Initialization
`app = Flask(__name__)`

## WSGI

WSGI is the Web Server Gateway Interface. It is a specification that describes how a web server communicates with web applications, and how web applications can be chained together to process one request.

WSGI is a Python standard described in detail in PEP 3333.

read [more](https://wsgi.readthedocs.io/en/latest/learn.html)

### `@login_required`

### werkzeug

Werkzeug started as a simple collection of various utilities for WSGI
applications and has become one of the most advanced WSGI utility modules. It
includes a powerful debugger, fully featured request and response objects, HTTP
utilities to handle entity tags, cache control headers, HTTP dates, cookie
handling, file uploads, a powerful URL routing system and a bunch of community
contributed addon modules.

It does Unicode and doesn't enforce a specific template engine, database adapter
or anything else. It doesn't even enforce a specific way of handling requests
and leaves all that up to the developer.

### `request`

http://flask.pocoo.org/docs/0.12/api/#flask.Request

### app structure

* https://www.digitalocean.com/community/tutorials/how-to-structure-large-flask-applications


### blueprints
