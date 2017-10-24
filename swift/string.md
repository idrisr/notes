# String

A `string` is not itself a `collection`. Instead, it has properties that present its
contents as meaningful collections. Each of these collections is a particular
type of view of the string's visible and data representation.

## views

### character view

### unicode scalar view

### utf-16 view

### utf-8 view

# Substring

When you create a slice of a string, a `Substring` instance is the result.
Operating on substrings is fast and efficient because a substring shares its
storage with the original string. The `Substring` type presents the same
interface as `String`, so you can avoid or defer any copying of the string’s
contents.
