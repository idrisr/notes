
from [here](https://www.cyberciti.biz/faq/how-to-disable-ssh-password-login-on-linux/)

## `useradd`
`useradd -m -s /bin/bash idmoney`

-m create a home directory if one doesnt exist
-s name of the users login shell

next steps

* set the user's password
* add user to groups, like sudo
* copy an ssh key
* turn off ssh password login

##  `useradd`

# `wheel` group

from [wikipedia](https://en.wikipedia.org/wiki/Wheel_(Unix_term)

In computing, the term wheel refers to a user account with a wheel bit, a system
setting that provides additional special system privileges that empower a user
to execute restricted commands that ordinary user accounts cannot access. The
term is derived from the slang phrase big wheel, referring to a person with
great power or influence. It was first used in this context with regard to the
TENEX operating system, later distributed under the name TOPS-20 in the 1960s
and early 1970s. The term was adopted by Unix users in the 1980s, due to the
movement of operating system developers and users from TENEX/TOPS-20 to Unix.

# list users
```bash
awk -F':' '{ print $1}' /etc/passwd
```
