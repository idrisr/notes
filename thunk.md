# Thunk

## a semi example

The final observation is that there is a cost for each Objective-C entry point,
because the Swift compiler must create a "thunk" method that maps from the
Objective-C calling convention to the Swift calling convention and is recorded
within Objective-C metadata. This increases the size of the binary (preliminary
tests on some Cocoa[Touch] apps found that 6-8% of binary size was in these
thunks alone, some of which are undoubtedly unused), and can have some impact on
load time (the dynamic linker has to sort through the Objective-C metadata for
these thunks).
