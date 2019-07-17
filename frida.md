# Frida

https://www.frida.re/

https://www.secjuice.com/objection-frida-guide/

## list processes to attach to
```bash
frida-ps -U // usb
frida-ps -R // simulator
```

## list processes to attach to
```bash
frida-ps -U // usb
frida-ps -R // simulator
```


```sh
Usage: frida-trace [options] target

Options:
  --version             show program's version number and exit
  -h, --help            show this help message and exit
  -D ID, --device=ID    connect to device with the given ID
  -U, --usb             connect to USB device
  -R, --remote          connect to remote frida-server
  -H HOST, --host=HOST  connect to remote frida-server on HOST
  -f FILE, --file=FILE  spawn FILE
  -n NAME, --attach-name=NAME
                        attach to NAME
  -p PID, --attach-pid=PID
                        attach to PID
  --debug               enable the Node.js compatible script debugger
  --enable-jit          enable JIT
  -I MODULE, --include-module=MODULE
                        include MODULE
  -X MODULE, --exclude-module=MODULE
                        exclude MODULE
  -i FUNCTION, --include=FUNCTION
                        include FUNCTION
  -x FUNCTION, --exclude=FUNCTION
                        exclude FUNCTION
  -a MODULE!OFFSET, --add=MODULE!OFFSET
                        add MODULE!OFFSET
  -T, --include-imports
                        include program's imports
  -t MODULE, --include-module-imports=MODULE
                        include MODULE imports
  -m OBJC_METHOD, --include-objc-method=OBJC_METHOD
                        include OBJC_METHOD
  -M OBJC_METHOD, --exclude-objc-method=OBJC_METHOD
                        exclude OBJC_METHOD
  -s DEBUG_SYMBOL, --include-debug-symbol=DEBUG_SYMBOL
                        include DEBUG_SYMBOL
  -q, --quiet           do not format agent's output
```