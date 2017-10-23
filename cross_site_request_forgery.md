# Cross Site Request Forgery

mostly from [here](https://www.grc.com/sn/sn-166.txt)

CSRF is an attack that tricks the victim into submitting a malicious request. It
inherits the identity and privileges of the victim to perform an undesired
function on the victim's behalf.

* not the same as cross site scripting

## sequence

1. you log in to site A, establish a cookie
1. attacker gets you to go to a site B. from site B a request is made to site A with the cookie from site A
1. so site A puts a token on their page, which only site A can get. change the token for each session

## testing
modify token to something invalid, see what happens

## POST and GET
should only really apply go POST, but some sites allow changes through GET too
