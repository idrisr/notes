# SOLID

from [here](https://nsscreencast.com/episodes/310-solid-intro?autoplay=true&series=11)

* Single Responsibility Principle
* Open Closed Principle
* Liskov Substitution Principle
* Interface Segregation Principle
* Dependency Inversion Principle

## SRP

## Open Closed Principle
* open for extension
* closed for modification
* clue that you're violating is from having the same `switch` statement in multiple places

## Liskov
* a subtype can be used in place of its type
* if you keep checking types, it's a sign your abstractions are off

## Interface Segregation Principle
* This one states that a type should not depend on methods from an interface that it will never use.

## Dependency Inversion Principle
* high level component should not talk to a low level component directly
* the high level component has the low level ones passed in
