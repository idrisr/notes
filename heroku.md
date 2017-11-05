# Heroku

## Django
https://devcenter.heroku.com/articles/deploying-python
https://devcenter.heroku.com/articles/how-heroku-works

## procfile
`procfile`s list process types - named commands that you may want executed.

## buildpacks
Buildpacks lie behind the slug compilation process. Buildpacks take
your application, its dependencies, and the language runtime, and produce slugs.
They’re open source - enabling you to extend Heroku to other languages and
frameworks.

```sh
heroku buildpacks:set heroku/python
```


## slug
Terminology: A slug is a bundle of your source, fetched dependencies, the language runtime, and compiled/generated output of the build system - ready for execution.

## dyno
Terminology: Dynos are isolated, virtualized Unix containers, that provide the
environment required to run an application.

```
# procfile
heroku ps:scale web=3 queue=2
```

## config vars
Config vars contain customizable configuration data that can be
changed independently of your source code. The configuration is exposed to a
running application via environment variables

## release
Releases are an append-only ledger of slugs and config vars.

## add-ons
Add-ons are third party, specialized, value-added cloud services that can be
easily attached to an application, extending its functionality.
