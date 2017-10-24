# `rsync`

form [here](https://en.wikipedia.org/wiki/Rsync)

rsync is a utility for efficiently transferring and synchronizing files across
computer systems, by checking the timestamp and size of files.[3] It is
commonly found on Unix-like systems and functions as both a file
synchronization and file transfer program. The rsync algorithm is a type of
delta encoding, and is used for minimizing network usage. Zlib may be used for
additional compression,[3] and SSH or stunnel can be used for data security.
Rsync is typically used for synchronizing files and directories between two
different systems. For example, if the command rsync local-file
user@remote-host:remote-file is run, rsync will use SSH to connect as user to
remote-host.[4] Once connected, it will invoke the remote host's rsync and then
the two programs will determine what parts of the file need to be transferred
over the connection.  Rsync can also operate in a daemon mode, serving files in
the native rsync protocol (using the "rsync://" syntax).
