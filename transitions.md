--
`UIViewControllerTransitioningDelegate`

The delegate object that provides transition animator, interactive controller, and custom presentation controller objects.

--
`UIViewControllerAnimatedTransitioning`

Adopt the UIViewControllerAnimatedTransitioning protocol in objects that implement the animations for a custom view controller transition. The methods in this protocol let you define an animator object, which creates the animations for transitioning a view controller on or off screen in a fixed amount of time. The animations you create using this protocol must not be interactive. To create interactive transitions, you must combine your animator object with another object that controls the timing of your animations.

--
`UIViewControllerContextTransitioning`

The UIViewControllerContextTransitioning protocol’s methods provide contextual information for transition animations between view controllers. Do not adopt this protocol in your own classes, nor should you directly create objects that adopt this protocol. During a transition, the animator objects involved in that transition receive a fully configured context object from UIKit. Custom animator objects—objects that adopt the UIViewControllerAnimatedTransitioning or UIViewControllerInteractiveTransitioning protocol—should simply retrieve the information they need from the provided object.

--
`UIViewControllerInteractiveTransitioning`

To enable an object (such as a navigation controller) to drive a view controller transition, configure a custom class to adopt the `UIViewControllerInteractiveTransitioning` protocol. An object that supports this protocol is called an interactive transition delegate.