# Mentor Questions
## Friday 10/20/2017


* modern javascript

# debugging javascript
* breakpoints
* stuff like `document.getElementById('setup_text_' + 1);`

## proper response from `POST`

```shell
POST /jokes/1 HTTP/1.1

{
  "setup": "WTF?!",
  "punchline": "YO",
}


HTTP/1.1 201 Created
Location: /jokes/11
```

* response from server with reloading whole page

## ajax to update only part of page
* templates - [handlebar](http://handlebarsjs.com/)
* angular - also uses routing-like ideas

## handlebars
smashes together the json and html

do something like `element.innerHTML='hello world'`

modern templating thing

## modern backend api
only returns json

the template is on the client, not the server

# database connections

* typically only have one connection setup
* let the ORM deal with it

# microservice philosophy
* some oreilly book with a green cover.
