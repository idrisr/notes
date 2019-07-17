# `AVFoundation`

## `AVAsset`
The primary class that the AV Foundation framework uses to represent media is `AVAsset`

* aggregated representation of a collection of one or more pieces of media data (audio and video tracks).
* It provides information about the collection as a whole, such as:
  * its title,
  * duration,
  * natural presentation size,
  * and so on.

`AVAsset` is not tied to particular data format. `AVAsset` is the superclass of
other classes used to create asset instances from media at a URL

* Each of the individual pieces of media data in the asset is of a uniform type and called a track.

* A vital concept in AV Foundation is that initializing an asset or a track does
not necessarily mean that it is ready for use. It may require some time to
calculate even the duration of an item (an MP3 file, for example, may not
contain summary information).

### `AVCaptureVideoPreviewLayer`
`AVCaptureVideoPreviewLayer` is a subclass of `CALayer` that you use to display
video as it is being captured by an input device.

You use this preview layer in conjunction with an AV capture session

### `AVCaptureSession`
An object that manages capture activity and coordinates the flow of data from input devices to capture outputs.

To perform a real-time or offline capture, you instantiate an `AVCaptureSession`
object and add appropriate inputs (such as `AVCaptureDeviceInput`), and outputs
(such as `AVCaptureMovieFileOutput`).

### `AVCaptureDeviceInput`
A capture input that provides media from a capture device to a capture session.

### `AVCaptureMovieFileOutput`

### `AVCaptureOutput`
`AVCaptureOutput` is an abstract base class describing an output destination of an `AVCaptureSession` object.


### `AVCaptureDevice`
A device that provides input (such as audio or video) for capture sessions and
offers controls for hardware-specific capture features.

### `AVMetadataObject`
The AVMetadataObject class is an abstract class that defines the basic
properties associated with a piece of metadata. These attributes reflect
information either about the metadata itself or the media from which the
metadata originated. Subclasses are responsible for providing appropriate values
for each of the relevant properties.

#### `AVMetadataFaceObject`

#### `AVMetadataMachineReadableCodeObject`

### `AVCaptureMetadataOutputObjectsDelegate`
Methods for receiving metadata produced by a metadata capture output.

The `AVCaptureMetadataOutputObjectsDelegate` protocol must be adopted by the
delegate of an `AVCaptureMetadataOutput` object . The single method in this
protocol is optional. The method allows a delegate to respond when a capture
metadata output object receives relevant metadata objects through its
connection.

The `AVCaptureMetadataOutput` object calls the methods of the delegate object on
the dispatch queue associated with its `metadataObjectsCallbackQueue` property.

* `AVCaptureMetadataOutputObjectsDelegate`
* `AVCamBarcode`
* `AVCaptureConnection`
* `AVCaptureMetadataOutput`
* `AVCaptureMetadataOutputObjectsDelegate`
* `AVCaptureSession`
* `AVCaptureSessionErrorKey`
* `AVCaptureSessionInterruptionEnded`
* `AVCaptureSessionInterruptionReason`
* `AVCaptureSessionInterruptionReasonKey`
* `AVCaptureSessionRuntimeError`
* `AVCaptureSessionWasInterrupted`
* `AVCaptureSessionWasInterruptedNotification`
* `AVCaptureVideoOrientation`
* `AVError`

# Streaming whatever
## `AVPlayerItem`
* An object used to model the timing and presentation state of an asset played by the player.


## `AVAssetCache`
An object used to inspect the state of an asset’s locally cached media data.

## `AVAssetTrack`

## `AVAggregateAssetDownloadTask`
* a `NSURLSessionTask`
* A single task that downloads multiple media selections for a single asset.

## `AVURLAsset`
* A concrete subclass of `AVAsset` that's used to initialize an asset from a local or remote URL.

## `AVAssetDownloadTask`
* Creates and initializes an asset download task to be used with this download session.

## `AVAudioSession`
* An intermediary object that communicates to the system how you intend to use audio in your app.

## `AVAssetDownloadURLSession`
* A URL session used to support the creation and execution of asset download tasks.

## `AVAssetDownloadDelegate`
* Methods you can implement to handle download-related events.

## `AVMediaSelection`
* An object that represents a complete rendition of media selection options on an asset.

## `AVAssetResourceLoader`
When an `AVURLAsset` object needs help loading a resource, it asks its
`AVAssetResourceLoader` object to assist. The resource loader encapsulates the
request information by creating an instance of this object, which it then
hands to its delegate object for processing. The delegate uses the
information in this object to perform the request and report on the success
or failure of the operation.

## `AVAssetResourceLoaderDelegate`
* Methods you can implement to handle resource loading requests coming from a URL asset.
* A class should adopt this protocol when associated with the asset’s resource loader—that is, 
* an instance of the `AVAssetResourceLoader` class. 
* The resource loader works with your delegate to process the request.

## `AVAssetResourceLoadingRequest`
* An object that encapsulates information about a resource request issued by a resource loader object.
* When an `AVURLAsset` object needs help loading a resource, it asks its `AVAssetResourceLoader` object to assist. The resource loader encapsulates the request information by creating an instance of this object, which it then hands to its delegate object for processing. The delegate uses the information in this object to perform the request and report on the success or failure of the operation.
