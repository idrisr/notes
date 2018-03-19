# Application Data Packages

* [readme](https://corporationunknown.com/blog/2014/07/10/preloading-development-data-into-your-ios-app/)

A feature of Xcode schemes that lets us specify an application data package to
load into the simulator or device alongside the app when built and run from the
Xcode GUI. This package completely replaces whatever is in the application’s
sandbox, effectively resetting documents and preferences. You can pull these
packages off live devices, so it’s a great way to take a snapshot of state you
want to save for later.
