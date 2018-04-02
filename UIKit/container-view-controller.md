# Container View Controller

* from [here](https://developer.apple.com/library/content/featuredarticles/ViewControllerPGforiPhoneOS/ImplementingaContainerViewController.html)
* from [here](https://useyourloaf.com/blog/container-view-controllers/)
* and [here](https://cocoacasts.com/managing-view-controllers-with-container-view-controllers/)

Container view controllers are a way to combine the content from multiple view
controllers into a single user interface. Container view controllers are most
often used to facilitate navigation and to create new user interface types based
on existing content. Examples of container view controllers in `UIKit` include
`UINavigationController`, `UITabBarController`, and `UISplitViewController`, all of
which facilitate navigation between different parts of your user interface.

The only requirement from `UIKit` is that you establish a formal parent-child
relationship between the container view controller and any child view
controllers.
