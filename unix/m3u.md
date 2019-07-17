# M3U
* computer file format for a multimedia playlist
* creating a single-entry playlist file pointing to a stream on the Internet
* no formal specification for the M3U format; it is a de facto standard
* An M3U file is a plain text file that specifies the locations of one or more media files

## M3U8
* manifest file
* `M3U8` files are the basis for the HTTP Live Streaming `(HLS)` format originally developed by Apple to stream video and radio to iOS devices
* popular format for `DASH`
* index file of the fragments
* `m3u8` playlist
* `ts` file chunks

## `.ts`
* transport stream extension

## HLS
* HTTP Live Streaming
* adaptive bitrate streaming communications
* resembles MPEG-DASH - works by breaking the overall stream into a sequence of small HTTP-based file downloads
* each download loading one short chunk of an overall potentially unbounded transport stream
* In HLS Encryption the video files are encrypted using a secure AES-128 algorithm


## DRM

## H.264

## HLS encryption
* AES-128 encryption 
* video files are encrypted using the AES-128 algorithms
* key exchange happens over `https`