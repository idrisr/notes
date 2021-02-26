## RemoteIO

wtf is it?

https://developer.apple.com/library/archive/qa/qa1715/_index.html#//apple_ref/doc/uid/DTS40012249

related to render proc.

it's a built in audio unit available via `kAudioUnitSubType_RemoteIO` and `AudioComponentDescription`.

possibly it's the real-time audio thread which pulls data through the audio processing graph to render to the output device.

