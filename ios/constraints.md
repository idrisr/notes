# `NSLayoutConstraint`

A constraint defines a relationship between two user interface objects that must be satisfied by the constraint-based layout system. Each constraint is a linear equation with the following format:

```
item1.attribute1 = multiplier × item2.attribute2 + constant
```

# `NSLayoutAnchor`

The `NSLayoutAnchor` class is a factory class for creating `NSLayoutConstraint` objects using a fluent API. Use these constraints to programatically define your layout using Auto Layout.

# `NSLayoutYAxisAnchor`

# `NSLayoutDimension`
A factory class for creating size-based layout constraint objects using a fluent API.



# `UILayoutGuide`
A rectangular area that can interact with Auto Layout.

Use layout guides to replace the dummy views you may have created to represent
inter-view spaces or encapsulation in your user interface. Traditionally, there
were a number of Auto Layout techniques that required dummy views.

# debug
use symbolic breakpoint `UIViewAlertForUnsatisfiableConstraints`

## `readableContentGuide`
## `topLayoutGuide`
## `bottomLayoutGuide`
## `layoutMarginsGuide`

# Ambiguous Constraints

## chisel
- `alamborder   -- Put a border around views with an ambiguous layout`
- `alamunborder` -- Removes the border around views with an ambiguous layout

## Visual Format Language ("VFL")
from [here](https://developer.apple.com/library/content/documentation/UserExperience/Conceptual/AutolayoutPG/VisualFormatLanguage.html)

```
# Standard Space
[button]-[textField]

# Width Constraint
[button(>=50)]

# Connection to Superview
|-50-[purpleBox]-50-|

# Vertical Layout
V:[topField]-10-[bottomField]

# Flush Views
[maroonView][blueView]

# Priority
[button(100@20)]

# Equal Widths
[button1(==button2)]

# Multiple Predicates
[flexibleButton(>=70,<=100)]

# A Complete Line of Layout
|-[find]-[findNext]-[findField(>=20)]-|
```

## apple
- from [here](https://developer.apple.com/library/content/documentation/UserExperience/Conceptual/AutolayoutPG/AmbiguousLayouts.html#//apple_ref/doc/uid/TP40010853-CH18-SW1)

Fortunately, there are a few methods you can call to help identify ambiguous
layouts. All of these methods should be used only for debugging. Set a
breakpoint somewhere where you can access the view hierarchy, and then call one
of the following methods from the console:

`hasAmbiguousLayout`. Available for both iOS and OS X. Call this method on a
misplaced view. It returns YES if the view’s frame is ambiguous. Otherwise, it
returns NO.

`exerciseAmbiguityInLayout`. Available for both iOS and OS X. Call this method on
a view with ambiguous layout. This will toggle the system between the possible
valid solutions.

`constraintsAffectingLayoutForAxis`:. Available for iOS. Call this method on a
view. It returns an array of all the constraints affecting that view along the
specified axis.

`constraintsAffectingLayoutForOrientation`:. Available for OS X. Call this method
on a view. It returns an array of all the constraints affecting that view along
the specified orientation.

`_autolayoutTrace`. Available as a private method in iOS. Call this method on a
view. It returns a string with diagnostic information about the entire view
hierarchy containing that view. Ambiguous views are labeled, and so are views
that have `translatesAutoresizingMaskIntoConstraints` set to YES.

You may need to use Objective-C syntax when running these commands in the
console. For example, after the breakpoint halts execution, type call
`[self.myView exerciseAmbiguityInLayout]` into the console window to call the
`exerciseAmbiguityInLayout` method on the `myView` object. Similarly, type `po
[self.myView autolayoutTrace]` to print out diagnostic information about the view
hierarchy containing `myView`.
