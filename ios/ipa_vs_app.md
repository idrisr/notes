# IPAs and .Apps

from [here](https://stackoverflow.com/questions/2949916/what-is-different-betwen-ipa-and-app-format-in-using-iphone)

`.app`s are application bundles. They contain the:
* executable file,
* an Info.plist file,
* an icon,
* a launch image,
* and some other application resources.

Application bundles are the only ones that actually get installed onto your device.

`.ipa`s are archives that contain
* .app bundles
* as well as some other files meant only for iTunes to use, for instance iTunesArtwork.

They are how iTunes manages applications, and as far as I can tell have little to do with the applications themselves other than App Store information.

## `ipa`

* Files with the `.ipa` extension can be uncompressed by changing the extension to `.zip` and unzipping.
