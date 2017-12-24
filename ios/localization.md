# Localization

[moar](https://developer.apple.com/library/content/documentation/MacOSX/Conceptual/BPInternational/Introduction/Introduction.html#//apple_ref/doc/uid/10000171i)

### `NSLocalizedString`
In Foundation, a macro for denoting strings as user-facing: `NSLocalizedString`.

`NSLocalizedString` is a Foundation macro that returns a localized version of a
string. It has two arguments: `key`, which uniquely identifies the string to be
localized, and `comment`, a string that is used to provide sufficient context for
accurate translation.

- Localization is the process of adapting your application for a specific market, or locale.
- Internationalization is the process of preparing your app to be localized.

> Internationalization is a necessary, but not sufficient condition for
localization, and will be the focus of this article. Localization, which
involves the translation of text and assets into a particular language, will be
covered in a future edition of NSHipster.

## `NSLocale`

`NSLocale` is a Foundation class that encapsulates all of the conventions about
language and culture for a particular locale. A locale encompasses all of the
linguistic and cultural norms of a particular group of people, including:

- Language
- Keyboards
- Number, Date, and Time Formats
- Currency
- Collation and Sorting
- Use of Symbols, Colors, and Iconography

Each locale corresponds to a locale identifier, such as `en_US`, `fr_FR`,
`ja_JP`, and `en_GB`, which include a language code (e.g. `en` for English) and a
region code (e.g. `US` for United States).


## `Localizable.strings`
At runtime, `NSLocalizedString` determines the preferred language, and finds a
corresponding `Localizable.strings` file in the app bundle. For example, if the
user prefers French, the file `fr.lproj/Localizable.strings` will be consulted.

Here’s what that looks like:


## `localized(with: "thing")`
let scDiagramName = "DiagramName".localized(with: "String for 'DIAGRAM NAME'")
