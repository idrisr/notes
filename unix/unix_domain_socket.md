# Unix Domain Socket

it's a socket used to communitate between processes on the same host operating
system. In effect it facilitates inter process communication. It has a similar API to TCP, but there's no network involved.

Tmux uses this in a socket at `tmp`
