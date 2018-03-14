# `URLSession`

* coordinates network tasks

## session types
* default
* shared
* ephemeral
* background

## overview
The `URLSession` class and related classes provide an API for downloading content.
This API provides a rich set of delegate methods for supporting authentication
and gives your app the ability to perform background downloads when your app
isn’t running or, in iOS, while your app is suspended.

The `URLSession` class natively supports the `data`, `file`, `ftp`, `http`, and `https` URL
schemes, with transparent support for proxy servers and `SOCKS` gateways, as
configured in the user’s system preferences.
