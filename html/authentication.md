# Authentication

from [here](https://stackoverflow.com/questions/9534602/what-is-the-difference-between-digest-and-basic-authentication)

basically both are used when you don't have SSL. Basic sends credentials in the
clear, so dont fucking use it. Digest is pretty much secure and can be use when
you are forced to use HTTP instead of HTTPS

## Basic
STEP 1 : the client makes a request for information, sending a username and
password to the server in plain text

STEP 2 : the server responds with the desired information or an error

## Digest
STEP 1 : a client sends a request to a server

STEP 2 : the server responds with a special code (called a nonce i.e. number
used only once), another string representing the realm(a hash) and asks the
client to authenticate

STEP 3 : the client responds with this nonce and an encrypted version of the
username, password and realm (a hash)

STEP 4 : the server responds with the requested information if the client hash
matches their own hash of the username, password and realm, or an error ifnot
