# Fonts

## `UIFont`
The interface for getting and setting font information.

* access to the font’s characteristics 
* provides the system with access to the font’s glyph information, 
* used during layout. 


## `UIFontDescriptor`

* mechanism to describe a font with a dictionary of attributes.
* can be archived and unarchived. 
* have a font matching capability, 
* you can partially describe a font by creating a font descriptor with, for example, just a family name. 
* You can then find all the available fonts on the system with a matching family name using
`matchingFontDescriptors(withMandatoryKeys:)`.


## Typeface
* also known as font family
* set of one or more fonts each composed of glyphs 
* that share common design features.


## Glyph
* version of a letter
* like the "a" in Courier New, and the "a" in Helvetica. those version of the "a" are glyphs