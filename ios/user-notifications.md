# `UserNotifications`

from - [here](https://developer.apple.com/documentation/usernotifications)

readme - [troubleshooting](https://developer.apple.com/library/content/technotes/tn2265/_index.html#//apple_ref/doc/uid/DTS40010376-CH1-TNTAG23)

The `UserNotifications` framework supports the
delivery and handling of local and remote notifications. You use the classes of
this framework to schedule the delivery of local notifications based on specific
conditions, such as time or location. Apps and extensions also use this
framework to receive and potentially modify local and remote notifications when
they are delivered to the user’s device.

## app in foreground
When your app is frontmost, `UIKit` delivers local and remote notifications
directly to your app delegate object without displaying any system UI. UIKit
calls the `application:didReceiveLocalNotification:` method for incoming local
notifications and the
`application:didReceiveRemoteNotification:fetchCompletionHandler:` method for
incoming remote notifications. Use the provided notification dictionary to
update your app accordingly. Because your app is running, you can incorporate
the notification data quietly or update your user interface and let the user
know that new information is available.

## the problem push notifications fix
But what if the app is not connected to its provider or even running on the
device or computer when the provider has new data for it to download? How does
it learn about this waiting data? Remote (or push) notifications are the
solution to this dilemma. A remote notification is a short message that a
provider has delivered to the operating system of a device or computer; the
operating system, in turn, can inform the user of a client app that there is
data to be downloaded, a message to be viewed, and so on. If the user enables
this feature (on iOS) and the app is properly registered, the notification is
delivered to the operating system and possibly to the app. Apple Push
Notification service (APNs) is the primary technology for the
remote-notification feature.

## push vs pull
As its name suggests, Apple Push Notification service uses a remote design to
deliver remote notifications to devices and computers. A push design differs
from its opposite, a pull design, in that the recipient of the notification
passively listens for updates rather than actively polling for them. A push
design makes possible a wide and timely dissemination of information with few of
the scalability problems inherent with pull designs. `APN`s uses a persistent IP
connection for implementing remote notifications.

## QoS
Most of a remote notification consists of a payload: a JSON dictionary
containing `APN`s-defined properties specifying how the user is to be notified.
The smaller you make the payload, the better the performance of your
notifications. Although you can define custom properties, do not use the
remote-notification mechanism for data transport. Delivery of remote
notifications is best-effort with a high success rate but is not guaranteed. For
more on the payload, see The Remote Notification Payload.

## offline
When a device is not online, `APN`s retains the last notification it receives from
a provider for an app on that device. If the device then comes online, `APN`s
pushes the stored notification to it. A device running iOS receives remote
notifications over both Wi-Fi and cellular connections; a computer running OS X
receives remote notifications over both Wi-Fi and Ethernet connections.
