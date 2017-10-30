# Core Data Syncing

There are a few elements that all sync methods have in common. These include:

* Identifying corresponding objects across stores
* Determining what has changed since the last sync
* Resolving conflicts due to concurrent changes

## Identity

In standalone apps, with a single store, objects are typically identified by a
row index in a database table, or something equivalent like an `NSManagedObjectID`
in Core Data. These identities are specific to the store, and not suitable for
identifying corresponding objects on different devices. When an app syncs, it’s
important that objects in different stores can be correlated with one another,
hence the need for global identifiers.

Global identifiers are often just Universally Unique Identifiers (UUIDs);
objects in different stores with the same global identifier are considered to be
logically representative of a single instance. Changes to one object should
eventually result in the corresponding object also being updated. (UUIDs can be
created in Cocoa with the recently added `NSUUID` class, or the oft-forgotten
globallyUniqueString method of the `NSProcessInfo` class.)

Logically equivalent objects in different stores should have the same
identifier, and objects that are not equivalent should have different
identifiers.

## Change Tracking

Change Tracking is a term used to describe how a sync algorithm determines what
has changed since the last synchronization event, and thereby what should be
changed locally. Each change to an object (often called a delta) is usually
handled as a CRUD operation: a creation, read, update, or deletion.

In either case, you need a means to record a change. In the simplest case, this
could just be a Boolean attribute in the local store, indicating whether the
object is new or has been updated since the last sync. In a more advanced
algorithm, a change could be stored outside the main store as a dictionary of
changed properties and with an associated timestamp.

## Conflict Resolution

When you have two or more stores representing the same logical set of data, the
potential for conflicts exists. A change to an object in one store could occur
at about the same time as a change to the corresponding object in a second
store, with no intervening sync. These changes are said to have occurred
concurrently, and some action may be necessary to leave the conflicting objects
in a consistent and valid state across all stores once they sync up.

Conflict resolution can get tricky, and if you have the choice, you should avoid
it altogether by devising a model that simply cannot become invalid due to
concurrent changes. In a new project, this is much easier than trying to think
of all the possible invalid states that could arise.

`changedSinceSync`

# Sync Algos

## Synchronous Client-Server (S–CS)
have your app send up all the local changes

## Asynchronous Client-Server (A–CS)
build a local API for your app to talk regarding data changes. That way the app
developer doesn't think about syncing, because your local API takes care of
syncing local and network data transparently. rite
