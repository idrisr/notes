# Segues

from [here](https://developer.apple.com/library/content/featuredarticles/ViewControllerPGforiPhoneOS/UsingSegues.html)

A segue defines a transition between two view controllers in your app’s
storyboard file.

* The starting point of a segue is the button, table row, or gesture recognizer that initiates the segue.
* The end point of a segue is the view controller you want to display.
* A segue always presents a new view controller, but you can also use an unwind segue to dismiss a view controller.

You can use the notifications sent by UIKit to pass data to the new view controller or prevent the segue from happening altogether.

## Segue types

### Show (Embed)

### Show (Push)

This segue displays the new content using the `showViewController:sender:` method
of the target view controller. For most view controllers, this segue presents
the new content modally over the source view controller. Some view controllers
specifically override the method and use it to implement different behaviors.
For example, a navigation controller pushes the new view controller onto its
navigation stack.

UIKit uses the `targetViewControllerForAction:sender:` method to locate the source
view controller.

### Show Detail (Replace)
This segue is relevant only for view controllers embedded inside a `UISplitViewController` object.

This segue displays the new content using the `showDetailViewController:sender:`
method of the target view controller.


With this segue, a split view controller replaces its second child view
controller (the detail controller) with the new content. Most other view
controllers present the new content modally.

UIKit uses the `targetViewControllerForAction:sender:` method to locate the source
view controller.

### Present Modally

This segue displays the view controller modally using the specified presentation
and transition styles. The view controller that defines the appropriate
presentation context handles the actual presentation.

### Present as Popover

In a horizontally regular environment, the view controller appears in a popover.
In a horizontally compact environment, the view controller is displayed using a
full-screen modal presentation.
