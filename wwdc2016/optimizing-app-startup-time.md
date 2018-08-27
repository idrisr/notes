# Linkers, Loaders and you

## how processes launch

### Theory
* everything that happens before main
* Mach-O format
* virtual memory basics
* how Mach-O binaries are loaded and prepared

### Practical
* how to measure
* optimizing app startup time

### Mach-O terminology
#### Executable
Main binary for application
#### Dylib
Dynamic library (aka DSO or DLL)
#### Bundle
Dylib that cannot be linked, only dlopen(), e.g. plug-ins
#### Image—An
executable, dylib, or bundle
#### Framework
Dylib with directory for resources and headers
