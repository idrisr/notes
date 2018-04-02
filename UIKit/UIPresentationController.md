# `UIPresentationController`

* from [here](https://developer.apple.com/documentation/uikit/uipresentationcontroller)

An object that manages the transition animations and the presentation of view
controllers onscreen.

From the time a view controller is presented until the time it is dismissed,
`UIKit` uses a presentation controller to manage various aspects of the
presentation process for that view controller. The presentation controller can
add its own animations on top of those provided by animator objects, it can
respond to size changes, and it can manage other aspects of how the view
controller is presented onscreen.

When you present a view controller using the `present(_:animated:completion:)`
method, `UIKit` always manages the presentation process. Part of that process
involves creating the presentation controller that is appropriate for the given
presentation style. For the built-in styles (such as the pageSheet style), `UIKit`
defines and creates the needed presentation controller object. The only time
your app can provide a custom presentation controller is when you set the
`modalPresentationStyle` property of your view controller custom. You might
provide a custom presentation controller when you want to add a shadow view or
decoration views underneath the view controller being presented or when you want
to modify the presentation behavior in other ways.


# The Presentation Process

The presentation process managed by a presentation controller is divided into three phases:

1. The presentation phase involves moving the new view controller onscreen through a series of transition animations.

1. The management phase involves responding to environment changes (such as device rotations) while the new view controller is onscreen.

1. The dismissal phase involves moving the new view controller off screen through a series of transition animations

## For the Layman
from [here](https://www.raywenderlich.com/139277/uipresentationcontroller-tutorial-getting-started)


When you call `present(_:animated:completion:)`, iOS does two things.

* First, it instantiates a `UIPresentationController`.
* Second, it attaches the presented view controller to itself then presents it using one of the built-in modal presentation styles.

## Key Concepts
1. The presented view controller has a transitioning delegate that’s responsible
for loading the `UIPresentationController` and the presentation/dismissal
animation controllers. That delegate is an object that conforms to
`UIViewControllerTransitioningDelegate`.

1. The `UIPresentationController` subclass is an object that has many
presentation-customizing methods, as you’ll see later in the tutorial.

1. The animation controller object is responsible for the presentation and
dismissal animations. It conforms to `UIViewControllerAnimatedTransitioning`.
Note that some use cases warrant two controllers: one for presentation and one
for dismissal.

1. A presentation controller’s delegate tells the presentation controller what
to do when its trait collection changes. For the sake of adaptivity, the
delegate must be an object that conforms to
`UIAdaptivePresentationControllerDelegate`.
That’s all you need to know before you dive in!
