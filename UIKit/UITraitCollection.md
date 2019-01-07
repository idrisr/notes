# `UITraitCollection`

* `UIUserInterfaceIdiom`
* `UIUserInterfaceSizeClass`
* `UIForceTouchCapability`
* `UIDisplayGamut`
* displayScale, 2x/3x etc
* `UITraitEnvironmentLayoutDirection`
* `UIContentSizeCategory`
* `UIUserInterfaceStyle`


```swift
    let horizontalCompact = UITraitCollection(horizontalSizeClass: .compact)
    if traitCollection.containsTraits(in: horizontalCompact) {
        ...
    }

    let horizontalRegular = UITraitCollection(horizontalSizeClass: .regular)
    if traitCollection.containsTraits(in: horizontalRegular) {
        ...
    }

    let twoX = UITraitCollection(displayScale: 2.0)
    let forceTouchAvailable = UITraitCollection(forceTouchCapability: .available)
    let both = UITraitCollection(traitsFrom: [twoX, forceTouchAvailable])
    let idiomPad = UITraitCollection(userInterfaceIdiom: .pad)
```