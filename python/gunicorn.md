# Gunicorn

Gunicorn 'Green Unicorn' is a Python WSGI HTTP Server for UNIX. It's a pre-fork
worker model. The Gunicorn server is broadly compatible with various web
frameworks, simply implemented, light on server resources, and fairly speedy.

## pre-fork worker model
Gunicorn is based on the pre-fork worker model. This means that there is a
central master process that manages a set of worker processes. The master never
knows anything about individual clients. All requests and responses are handled
completely by worker processes.
