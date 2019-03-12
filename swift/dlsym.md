from [here](https://developer.apple.com/library/archive/documentation/DeveloperTools/Conceptual/DynamicLibraries/100-Articles/DynamicLibraryUsageGuidelines.html)

# dlsym

# dlopen
* the dynamic loader to load a specific dynamic library into the address space of the current process. 
* allows you to specify when the dynamic loader binds the library’s references to the corresponding exported symbols in its dependent libraries and whether to place the library’s exported symbols in the current process’s global scope or a local scope. 
* returns a handle called library handle.
