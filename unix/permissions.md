# Permissions

from [wikipedia](https://en.wikipedia.org/wiki/File_system_permissions)

todo readme http://tldp.org/LDP/intro-linux/html/sect_03_04.html

```bash
Symbolic    Oct   English
----------	0000	no permissions
-rwx------	0700	read, write, & execute only for owner
-rwxrwx---	0770	read, write, & execute for owner and group
-rwxrwxrwx	0777	read, write, & execute for owner, group and others
---x--x--x	0111	execute
--w--w--w-	0222	write
--wx-wx-wx	0333	write & execute
-r--r--r--	0444	read
-r-xr-xr-x	0555	read & execute
-rw-rw-rw-	0666	read & write
-rwxr-----	0740	owner can read, write, & execute; group can only read; others have no permissions
```

```bash
drwxr-xr-x 2 root root 4096 Nov  3 15:32 ./
drwx------ 1 root root 4096 Nov  3 15:32 ../
-rw-r--r-- 1 root root  401 Nov  3 15:32 authorized_keys

root@bd89a727989d:~# chmod -R go= ~/.ssh
drwx------ 2 root root 4096 Nov  3 15:32 ./
drwx------ 1 root root 4096 Nov  3 15:32 ../
-rw------- 1 root root  401 Nov  3 15:32 authorized_keys
```

