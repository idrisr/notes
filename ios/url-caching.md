# Network Caching


## The players

* `URLSessionConfiguration`

* `URLCache`

## under the hood

in the `Library/Caches` dir there's a sqlite database `Cache.db`

Tables include:

`cfurl_cache_receiver_data`

`cfurl_cache_blob_data`

`cfurl_cache_response`

`cfurl_cache_schema_version`

`sqlite_schemaversion`
