
```bash
apps
bin
conf
contrib
core
db
dispatch
forms
http
middleware
shortcuts.py
template
templatetags
test
urls
utils
views
```

## terms
### app
An `app` refers to a submodule of the application. It's, hopefully,
self-contained and not intertwined with other apps in the project so that, in
theory, you could pick it up and plop it down into another project without much,
or any, modification. An app typically has it's own `models.py` (which might
actually be empty). You might look at it as a python module.

### project
A Python package – i.e. a directory of code – that contains all the settings for
an instance of Django. This would include database configuration,
Django-specific options and application-specific settings.

```bash
├── confs                     // an app of the project
│   ├── __init__.py
│   ├── admin.py
│   ├── apps.py
│   ├── migrations
│   │   └── __init__.py
│   ├── models.py
│   ├── tests.py
│   └── views.py
├── iosconf                  // the project
│   ├── __init__.py
│   ├── settings.py
│   ├── urls.py
│   └── wsgi.py
└── manage.py
```
