# Fonts

## `UIFont`
The interface for getting and setting font information.

`UIFont` provides you with access to the font’s characteristics and also provides
the system with access to the font’s glyph information, which is used during
layout. You use font objects by passing them to methods that accept them as a
parameter.

You do not create font objects using the alloc and init methods. Instead, you
use class methods of `UIFont` such as `preferredFont(forTextStyle:)`, to look up
and retrieve the desired font object. These methods check for an existing font
object with the specified characteristics and return it if it exists. Otherwise,
they create a new font object based on the desired font characteristics.

Font objects are immutable and so it is safe to use them from multiple threads
in your app.


## `UIFontDescriptor`

A mechanism to describe a font with a dictionary of attributes.

A font descriptor can be used later to create or modify a `UIFont` object. Font
descriptors can be archived and unarchived. Font descriptors have a font
matching capability, so that you can partially describe a font by creating a
font descriptor with, for example, just a family name. You can then find all the
available fonts on the system with a matching family name using
`matchingFontDescriptors(withMandatoryKeys:)`.
