# Autolayout

also see [constraints](./constraints.md)


## Adaptive layout
from [here](https://developer.apple.com/library/content/featuredarticles/ViewControllerPGforiPhoneOS/TheAdaptiveModel.html)

* When the size of a parent view changes, iOS automatically resizes and
repositions the rest of your views according to the constraints you specified.

## Traits
Traits are another important component of the adaptive model. Traits describe
the environment in which your view controllers and views must operate. Traits
help you make high-level decisions about your interface.

### `horizontalSizeClass`
This trait conveys the general width of your interface. Use it to make
coarse-level layout decisions, such as whether views are stacked vertically,
displayed side by side, hidden altogether, or displayed by another means.

### `verticalSizeClass`
This trait conveys the general height of your interface. If your design requires
all of your content to fit on the screen without scrolling, use this trait to
make layout decisions.


## Size Classes
### to make coarse changes to UI
Use size classes to make coarse changes to your interface. Size class changes
are an appropriate time to add or remove views, add or remove child view
controllers, or change your layout constraints. You can also do nothing and let
your interface adapt automatically using its existing layout constraints.

### dont assume a specific size
Never assume that a size class corresponds to the specific width or height of a
view. Your view controllers’ size classes can change for many reasons. For
example, a container view controller on iPhone might make one of its children
horizontally regular to force it to display its contents differently.

### Interface Builder
Use Interface Builder to specify different layout constraints for each size
class, as appropriate. Using Interface Builder to specify constraints is much
simpler than adding and removing constraints yourself. View controllers
automatically handle size class changes by applying the appropriate constraints
from their storyboard. For information about configuring layout constraints for
different size classes, see Configuring Your Storyboard to Handle Different Size
Classes.

### Avoid getting device specific
Avoid using idiom information to make decisions about the layout or content of
your interface. Apps running on iPad and iPhone should generally display the
same information and should use size classes to make layout decisions

## When traits change
* device rotation.
* size class of a container view controller changed.
* size class of the current view controller was changed explicitly by its container.

* Size class changes in the view controller hierarchy propagate down to any child view controllers.

* For each view controller in the hierarchy, `UIKit` calls the following methods to report those changes:
  * The `willTransitionToTraitCollection:withTransitionCoordinator:` tells each relevant view controller that its traits are about to change.
  * The `viewWillTransitionToSize:withTransitionCoordinator:` tells each relevant view controller that its size is about to change.
  * The `traitCollectionDidChange:` tells each relevant view controller that its traits have now changed.

* When transitioning from a horizontally regular to a horizontally compact
environment, `UIKit` changes the built-in presentation styles to
`UIModalPresentationFullScreen` by default. For custom presentation styles, your
presentation controller can determine the adaptation behavior and adjust the
presentation accordingly.  


# size class specific layout
* from [here](https://developer.apple.com/library/content/documentation/UserExperience/Conceptual/AutolayoutPG/Size-ClassSpecificLayout.html)

* Interface Builder recognizes nine different size classes.

## Final size classes:
The Final classes represent actual size classes displayed on devices.
  * Compact-Compact,
  * Compact-Regular,
  * Regular-Compact, and
  * Regular-Regular.

## Base size classes:
These are abstract size classes that represent two or
more Final size classes. For example, items installed in the Compact-Any size
class appear in both the Compact-Compact and Compact-Regular size views.

* Compact-Any,
* Regular-Any,
* Any-Compact,
* Any-Regular, and
* Any-Any.
