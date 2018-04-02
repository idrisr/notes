# Persistence

from Fatal Error

## schema less mysql
[readme](https://backchannel.org/blog/friendfeed-schemaless-mysql)

## postgres schemaless
[readme](https://www.postgresql.org/docs/9.6/static/datatype-json.html)

## yap database
* key - value store
* sqlite under the hood, you dont worry about that
* also has collections
* collection of locations, other-things
* kind of corresponds to tables
* you can have indexes
* might be a geo extension
* simple framework, simple mental model
* extendible
* map into views, for like table views or collection views
* no inheritance from god object, from CoreData, Realm...
* only requirement is you encode `Object`<->`Data`
* can have relationships between entities, like reference counting
* can do that also between files on disk
* it doesnt watch the file system to delete stuff from the database

## flat files
* per Soroush
* at around 2000 records it's taking like 5 seconds to load into memory
* causing time pressure when disk caches not warmed up


go in sequential approach for a new app
* 100s of records - user defaults
* 1000s of records - flat files (in his case, 2.5M bytes)
* 10000s of records - flat files

## Realm
* thread safe
* doesnt rely on sqlite
* it's memory mapped
* never copying an object into memory first
* C++ core is open sourced
