# Cookie

* small piece of data that a server sends to the user's web browser. 
* The browser may store it and send it back with the next request to the same server. 
* Typically, it's used to tell if two requests came from the same browser — keeping a user logged-in, for
example. 
* It remembers stateful information for the stateless HTTP protocol.

## 3 main purpopses
### Session management
* Logins, shopping carts, game scores, or anything else the server should remember
### Personalization
* User preferences, themes, and other settings
### Tracking
* Recording and analyzing user behavior


## Fields
### `Expires`

### `Secure`
* only sent to the server with an encrypted request over the HTTPS protocol. 
* Even with Secure, sensitive information should never be stored in cookies, as they are inherently insecure and this flag can't offer real protection. 
* Starting with Chrome 52 and Firefox 52, insecure sites (http:) can't set cookies with the Secure directive.


### `Http Only`
* To prevent cross-site scripting (XSS) attacks, 
* `HttpOnly` cookies are inaccessible to JavaScript's `Document.cookie` API; they are only sent to the server. 
* For example, cookies that persist server-side sessions don't need to be available to JavaScript, and the `HttpOnly` flag should be set.

## Scope of Cookie
* The `Domain` and `Path` directives define the scope of the cookie: what URLs the cookies should be sent to.

### `Domain`


### `Path`
