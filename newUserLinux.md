
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
