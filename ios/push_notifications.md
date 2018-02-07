# Push Notifications

A push notification is a message that pops up on a mobile device.

On initial launch of your app on a user’s device, the system automatically
establishes an accredited, encrypted, and persistent IP connection between your
app and APNs.

With push notification setup complete on your providers and in your app, your
providers can then send notification requests to APNs. APNs conveys
corresponding notification payloads to each targeted device. On receipt of a
notification, the system delivers the payload to the appropriate app on the
device, and manages interactions with the user.

If a notification for your app arrives with the device powered on but with the
app not running, the system can still display the notification.

If the device is powered off when APNs sends a notification, APNs holds on to
the notification and tries again later (for details, see Quality of Service,
Store-and-Forward, and Coalesced Notifications).


## provider
A provider is a server, that you deploy and manage, that you configure to work
with APNs. Figure 6-1 shows the path of delivery for a remote notification.

### provider responsiblity
* Receiving, via APNs, globally-unique, app-specific device tokens and other
relevant data from instances of your app on user devices. This allows a provider
to know about each running instance your app.
* Determining, according to the
design of your notification system, when remote notifications need to be sent to
each device.
* Building and sending notification requests to APNs, each request
containing a notification payload and delivery information; APNs then delivers
corresponding notifications to the intended devices on your behalf.

### remote notifications
* Construct a JSON dictionary containing the notification’s payload, as described in Creating the Remote Notification Payload.
* Add the payload, a globally-unique device token, and other delivery information to an HTTP/2 request. For information about device tokens, see APNs-to-Device Connection Trust and Device Tokens. For information about the HTTP/2 request format, and the possible responses and errors from APNs, see Communicating with APNs.
* Send the HTTP/2 request to APNs, including cryptographic credentials in the form of a token or a certificate, over a persistent, secure channel. Establishing this secure channel is described in Security Architecture.

## Pushy

## APNs

[overview](https://developer.apple.com/library/content/documentation/NetworkingInternet/Conceptual/RemoteNotificationsPG/APNSOverview.html#//apple_ref/doc/uid/TP40008194-CH8-SW1)

## tutorial
from [here](https://www.appcoda.com/push-notification-ios/)

## debugging
