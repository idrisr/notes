# OAuth 2.0

https://oauth.net/2/

* auth layer
* access token
  * a string denoting a
  * specific scope,
  * lifetime,
  * and other access attributes.


For example, an end-user (`resource owner`) can grant a printing
service (`client`) access to her protected photos stored at a photo-
sharing service (`resource server`), without sharing her username and
password with the printing service.  Instead, she authenticates
directly with a server trusted by the photo-sharing service
(`authorization server`), which issues the printing service delegation-
specific credentials (`access token`).  

---
## Endpoits
from [here](http://tutorials.jenkov.com/oauth2/endpoints.html)

### authorization
The authorization endpoint is the endpoint on the authorization server where the
resource owner logs in, and grants authorization to the client application.

### token
The token endpoint is the endpoint on the authorization server where the client
application exchanges the authorization code, client ID and client secret, for
an access token.

### redirect
The redirect endpoint is the endpoint in the client application where the
resource owner is redirected to, after having granted authorization at the
authorization endpoint.

---
# Roles

## `resource owner`
An entity capable of granting access to a protected resource.
When the resource owner is a person, it is referred to as an
end-user.

## `resource server`
The server hosting the protected resources, capable of accepting
and responding to protected resource requests using access tokens.

## `client`
An application making protected resource requests on behalf of the
resource owner and with its authorization.  The term "client" does
not imply any particular implementation characteristics (e.g.,
whether the application executes on a server, a desktop, or other
devices).

## `authorization server`
The server issuing access tokens to the client after successfully
authenticating the resource owner and obtaining authorization.

The interaction between the authorization server and resource server
is beyond the scope of this specification.  The authorization server
may be the same server as the resource server or a separate entity.
A single authorization server may issue access tokens accepted by
multiple resource servers.

# My Dumb Notes

## Terms
* `authorization grants`
* `access tokens`
* `id tokens`
* `authorization code grant`
* `implicit grant`
* `resource owner credential`
