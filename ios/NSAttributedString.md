# `NSAttributedString`

[read me](https://kapeli.com/dash_share?docset_file=com.apple.adc.documentation&docset_name=Apple%20Guides%20and%20Sample%20Code&fallback=https://developer.apple.com/library/etc/redirect/xcode/content/1189&path=documentation/Cocoa/Conceptual/AttributedStrings/AttributedStrings.html%23//apple_ref/doc/uid/10000036i&platform=osx)

A string that has associated attributes (such as visual style, hyperlinks, or
accessibility data) for portions of its text.

An `NSAttributedString` object manages character strings and associated sets of
attributes (for example, font and kerning) that apply to individual characters
or ranges of characters in the string. An association of characters and their
attributes is called an attributed string. The cluster’s two public classes,
`NSAttributedString` and `NSMutableAttributedString`, declare the programmatic
interface for read-only attributed strings and modifiable attributed strings,
respectively.


* `NSAttributedString` is not a subclass of `NSString`. It contains an `NSString`
object to which it applies attributes.

`NSAttributedString` and `NSMutableAttributedString` add a number of features to the basic content storage of `NSString`:

* Association of arbitrary, programmer-defined attributes with ranges of characters.
* Preservation of attribute-to-character mapping after changes (`NSMutableAttributedString`).
* Support for RTF, including file attachments and graphics.
* Drawing in `NSView` objects (note that the Application Kit adds drawing methods to `NSString` as well)
* Linguistic unit (word) and line calculation.
* An attributed string identifies attributes by name, storing their values as opaque ids in an `NSDictionary` object.

## Access
An attributed string identifies attributes by name, storing a value under the
attribute name in an `NSDictionary` object, which is in turn associated with an
`NSRange` that indicates the characters to which the dictionary’s attributes
apply. You can assign any attribute name-value pair you wish to a range of
characters, in addition to the standard attributes.
