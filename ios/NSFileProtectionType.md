# `NSFileProtectionType`

## `NSFileProtectionComplete`
The file is stored in an encrypted format on disk and cannot be read from or written to while the device is locked or booting.

## `NSFileProtectionCompleteUnlessOpen`
The file is stored in an encrypted format on disk. Files can be created while
the device is locked, but once closed, cannot be opened again until the
device is unlocked. If the file is opened when unlocked, you may continue to
access the file normally, even if the user locks the device. There is a small
performance penalty when the file is created and opened, though not when
being written to or read from. This can be mitigated by changing the file
protection to `NSFileProtectionComplete` when the device is unlocked.

## `NSFileProtectionCompleteUntilFirstUserAuthentication`

## `NSFileProtectionNone`