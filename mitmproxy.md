# MITMProxy

## On Mac
* turn on `http` and `https` proxying

```bash

#!/bin/bash
# from 
# https://stackoverflow.com/questions/4029471/how-to-you-toggle-on-and-off-a-web-proxy-in-os-x-from-the-command-line

e=$(networksetup -getwebproxy wi-fi | grep "No")

if [ -n "$e" ]; then
    echo "Turning on proxy"
    sudo networksetup -setwebproxystate wi-fi on
    sudo networksetup -setsecurewebproxystate wi-fi on
else
    echo "Turning off proxy"
    sudo networksetup -setwebproxystate wi-fi off
    sudo networksetup -setsecurewebproxystate wi-fi off
fi
```

* install the cert on the client
* [readme](https://docs.mitmproxy.org/stable/concepts-certificates/)

## install cert on simulator