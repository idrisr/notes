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

* `AVCaptureVideoPreviewLayer`
* `AVCaptureSession`
* `AVCaptureMetadataOutputObjectsDelegate`
* `AVCaptureDevice`
* `AVCamBarcode`
* `AVCaptureConnection`
* `AVCaptureDevice`
* `AVCaptureDeviceInput`
* `AVCaptureMetadataOutput`
`AVCaptureMetadataOutputObjectsDelegate`
`AVCaptureSession`
`AVCaptureSessionErrorKey`
`AVCaptureSessionInterruptionEnded`
`AVCaptureSessionInterruptionReason`
`AVCaptureSessionInterruptionReasonKey`
`AVCaptureSessionRuntimeError`
`AVCaptureSessionWasInterrupted`
`AVCaptureSessionWasInterruptedNotification`
`AVCaptureVideoOrientation`
`AVCaptureVideoPreviewLayer`
`AVError`
`AVFoundation`
`AVMetadataFaceObject`
`AVMetadataMachineReadableCodeObject`
`AVMetadataObject`
