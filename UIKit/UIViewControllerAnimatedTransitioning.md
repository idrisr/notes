# `UIViewControllerAnimatedTransitioning`

The methods in this protocol let you define an animator object, which creates
the animations for transitioning a view controller on or off screen in a fixed
amount of time. The animations you create using this protocol must not be
interactive. To create interactive transitions, you must combine your animator
object with another object that controls the timing of your animations.
