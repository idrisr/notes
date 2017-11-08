# File systems

## ext4
The `ext4` or fourth extended filesystem is a journaling file system for Linux,
developed as the successor to `ext3`.

##  tmpfs
is a common name for a temporary file storage facility on many Unix-like
operating systems. It is intended to appear as a mounted file system, but stored
in volatile memory instead of a persistent storage device. A similar
construction is a RAM disk, which appears as a virtual disk drive and hosts a
disk file system.

### example
```bash
$ df -hT
Filesystem     Type      Size  Used Avail Use% Mounted on
udev           devtmpfs  488M     0  488M   0% /dev
tmpfs          tmpfs     100M  3.2M   96M   4% /run
/dev/xvda1     ext4      7.7G  1.2G  6.6G  15% /
tmpfs          tmpfs     496M     0  496M   0% /dev/shm
tmpfs          tmpfs     5.0M     0  5.0M   0% /run/lock
tmpfs          tmpfs     496M     0  496M   0% /sys/fs/cgroup
tmpfs          tmpfs     100M     0  100M   0% /run/user/1000
/dev/xvdb      ext4      2.0G  3.0M  1.8G   1% /home/ubuntu/stuff
```

### devtmpfs
https://lwn.net/Articles/330985/

devtmpfs is a file system with automated device nodes populated by the kernel.
This means you don't have to have udev running nor to create a static /dev
layout with additional, unneeded and not present device nodes. Instead the
kernel populates the appropriate information based on the known devices.
