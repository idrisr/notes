# Measuring and optimizing HLS Performance

## Errors
* playback error triangle and line through it

## HLS Playback session
* download m3u8 master playlist

`AVPlayerItemAccessLog`

`AVPlayerItemNewAccessLogEntry`

* media load
* pre fetching

`AVFoundationKeySession`

`AVQueuePlayer`

`AVPlayerItem`
* `isPlaybacklikelyToKeepUp`

`AVPlayerItemErrorLog`

## variant
* different speeds offered in master playlist

## bitrate

`AVAssetDownloadStorageManager`

`AVContentKeySession`
* decouples key loading from media loading or playback
* decide when to get key
* use this OR AVFoundation will ask for a key when you start playing 
* allows for key preloading
* key rotation, key renewal