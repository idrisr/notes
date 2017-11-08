# EBS

elastic block storage
https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumeTypes.html

## mounting an EBS volume
from [here](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-using-volumes.html)

----
#### mount it
```bash
$ lsblk  # list block devices
$ df -hT # check file systems. install one if needed
$ mount device_name mount_point # mount the device
```
----
#### auto mount it on reboot
```bash
sudo cp /etc/fstab /etc/fstab.orig # backup the existing one
```

Add a new line to the end of the file for your volume using the following format:
```
device_name  mount_point  file_system_type  fs_mntops  fs_freq  fs_passno  
```

```bash
sudo file -s /dev/xvda1 # get the device uuid, or
ls -al /dev/disk/by-uuid/
```

```bash
tail -n1 /etc/fstab # add the entry to /etc/fstab
UUID=8675309 /home/user/userstuff ext4 defaults,nofail 0 2
```

```bash
$ sudo mount -a # check that it worked
$ echo $?
```
