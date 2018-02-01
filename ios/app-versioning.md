# App Versioning

from [here](https://developer.apple.com/library/content/documentation/General/Reference/InfoPlistKeyReference/Articles/CoreFoundationKeys.html#//apple_ref/doc/uid/20001431-111349)

### `CFBundleShortVersionString`
* tl;dr - specificies a *released* versions of the app, using semantic versioning

`CFBundleShortVersionString` (String - iOS, macOS) specifies the release version number of the bundle, which identifies a released iteration of the app.

The release version number is a string composed of three period-separated
integers. The first integer represents major revision to the app, such as a
revision that implements new features or major changes. The second integer
denotes a revision that implements less prominent features. The third integer
represents a maintenance release revision.

The value for this key differs from the value for `CFBundleVersion`, which identifies an iteration (released or unreleased) of the app.

This key can be localized by including it in your `InfoPlist.strings` files.

See also `NSHumanReadableCopyright`.

### `CFBundleVersion`
* tl;dr - specificies a *un/released* versions of the app, using semantic versioning


`CFBundleVersion` (String - iOS, macOS) specifies the build version number of
the bundle, which identifies an iteration (released or unreleased) of the
bundle.

* The build version number should be a string comprised of three non-negative,
period-separated integers with the first integer being greater than zero—for
  * example, 3.1.2.

* The string should only contain numeric (0-9) and period (.)
characters. Leading zeros are truncated from each integer and will be ignored
(that is, 1.02.3 is equivalent to 1.2.3). The meaning of each element is as
follows:

* The first number represents the most recent major release and is limited to a
maximum length of four digits.
* The second number represents the most recent
significant revision and is limited to a maximum length of two digits.
* The third
number represents the most recent minor bug fix and is limited to a maximum
length of two digits. If the value of the third number is 0, you can omit it and
the second period.

While developing a new version of your app, you can include a suffix after the
number that is being updated; for example 3.1.3a1. The character in the suffix
represents the stage of development for the new version. For example, you can
represent development, alpha, beta, and final candidate, by d, a, b, and fc. The
final number in the suffix is the build version, which cannot be 0 and cannot
exceed 255. When you release the new version of your app, remove the suffix.
