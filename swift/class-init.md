# Class init

Class initialization in Swift is a two-phase process.

1. In the first phase, each stored property is assigned an initial value by the
class that introduced it. Once the initial state for every stored property has
been determined,

1. the second phase begins, and each class is given the
opportunity to customize its stored properties further before the new instance
is considered ready for use.

The use of a two-phase initialization process makes initialization safe, while still giving complete flexibility to each class in a class hierarchy. Two-phase initialization prevents property values from being accessed before they are initialized, and prevents property values from being set to a different value by another initializer unexpectedly.
