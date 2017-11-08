
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

## users and groups
from [here](https://csguide.cs.princeton.edu/account/groups)

```bash
groups <user> // list groups user is in
```

Every file and directory has a username and a groupname associated with it.   

change the group associated with a file or directory which already exists use
the command `chgrp project filename`

Unix permissions permit different users access to a file. Different user groups
have different permissions on a file.

## access control list
More advanced Unix filesystems include the Access Control List concept which
allows permissions to be granted to multiple users or groups. An Access Control
List may be used to grant permission to additional individual users or groups.

Users under Unix style operating systems often belong to managed groups with
specific access permissions. This enables users to be grouped by the level of
access they have to this system. Many Unix implementations add an additional
layer of security by requiring that a user be a member of the wheel user
privileges group in order to access the `su` command.

## root access
Most Unix and Unix-like systems have an account or group which enables a user to
exact complete control over the system, often known as a `root` account. If access
to this account is gained by an unwanted user, this results in a complete breach
of the system. A root account however is necessary for administrative purposes,
and for the above security reasons the root account is seldom used for day to
day purposes (the `sudo` program is more commonly used), so usage of the `root`
account can be more closely monitored.

### superman
Using a root account is rather like being Superman; an administrator's regular
user is more like Clark Kent. Clark Kent becomes Superman for only as long as
necessary, in order to save people. He then reverts to his "disguise". Root
access should be used in the same fashion. The Clark Kent disguise doesn't
really restrict him though, as he is still able to use his super powers. This is
analogous to using the sudo program.

## passwords
In Unix systems, the essential information about users is stored under the file
`/etc/passwd`. This file keeps track of the users registered in the system and
their main definitions. Passwords, or more correctly, the hash of the password,
can also be stored in the same place.

# File System Security
File system security within UNIX and Unix-like systems is based on 9 permission
bits, set user and group ID bits, and the sticky bit, for a total of 12 bits.
These permissions apply almost equally to all filesystem objects such as files,
directories and devices.

The 9 permission bits are divided into three groups of three bits each.

1. The first group describes the permissions of the file owner,
1. second group describes the permissions of a group associated with the file owner or the directory containing the file, and
1. third group describes the permissions associated with any process which does not have the same user ID as the file.

Each group of three bits contains a bit indicating:

1. read
1. write
1. execute

access is granted. In the case of directories, execute access is interpreted as the permission to perform a filename lookup within the directory.
