# View Controller Transitions

[readme](https://www.objc.io/issues/5-ios7/view-controller-transitions/)

# Animation Delegate

```swift
protocol UIViewControllerTransitioningDelegate
```
A set of methods that vend objects used to manage a fixed-length or interactive transition between view controllers.

# Non-Interactive Transitions
```swift
protocol UIViewControllerAnimatedTransitioning
```
A set of methods for implementing the animations for a custom view controller transition.

```swift
protocol UIViewControllerContextTransitioning
```
A set of methods that provide contextual information for transition animations between view controllers.

# Interactive Transitions

```swift
class UIPercentDrivenInteractiveTransition
```
An object that drives an interactive animation between one view controller and another.

```swift
protocol UIViewControllerInteractiveTransitioning
```
A set of methods that enable an object (such as a navigation controller) to drive a view controller transition.

```swift
protocol UIViewImplicitlyAnimating
```
An interface for modifying an animation while it is running.

# Transition Coordinators

```swift
protocol UIViewControllerTransitionCoordinator
```
A set of methods that provides support for animations associated with a view controller transition.

```swift
protocol UIViewControllerTransitionCoordinatorContext
```
A set of methods that provides information about an in-progress view controller transition.
