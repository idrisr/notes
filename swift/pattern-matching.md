# Pattern Matching


## `if case let`
from [here](http://alisoftware.github.io/swift/pattern-matching/2016/05/16/pattern-matching-4/)

* like doing a switch with one case

```swift
let m = Media.movie(title: "Captain America: Civil War", director: "Russo Brothers", year: 2016)

if case let Media.movie(title, _, _) = m {
  print("This is a movie named \(title)")
}

# same as above
switch m {
  case let Media.movie(title, _, _):
    print("This is a movie named \(title)")
  default: () // do nothing, but this is mandatory as all switch in Swift must be exhaustive
}
```
