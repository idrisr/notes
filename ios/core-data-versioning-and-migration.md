# Core Data Model Versioning and Data Migration

from [here](https://developer.apple.com/library/content/documentation/Cocoa/Conceptual/CoreDataVersioning/Articles/Introduction.html#//apple_ref/doc/uid/TP40004399)

* You can only open a Core Data store using the managed object model used to
create it. Changing a model will therefore make it incompatible with (and so
unable to open) the stores it previously created. If you change your model,
you therefore need to change the data in existing stores to new
version—changing the store format is known as migration.

* To migrate a store,
  * you need both the version of the model used to create it,
  * and the current version of the model you want to migrate to.
  * You can create a versioned model that contains more than one version of a
  managed object model.
  * Within the versioned model you mark one version as being
  the current version.
  * Core Data can then use this model to open persistent
  stores created using any of the model versions, and migrate the stores to the
  current version.
  * To help Core Data perform the migration, though, you may have
  to provide information about how to map from one version of the model to
  another. This information may be in the form of hints within the versioned
  model itself, or in a separate mapping model file that you create.

## Lightweight Migration
If you just make simple changes to your model (such as adding a new attribute to
an entity), Core Data can perform automatic data migration, referred to as
lightweight migration. Lightweight migration is fundamentally the same as
ordinary migration, except that instead of you providing a mapping model (as
described in Mapping Overview), Core Data infers one from differences between
the source and destination managed object models.

Lightweight migration is especially convenient during early stages of
application development, when you may be changing your managed object model
frequently, but you don’t want to have to keep regenerating test data. You can
migrate existing data without having to create a custom mapping model for every
model version used to create a store that would need to be migrated.

A further advantage of using lightweight migration—beyond the fact that you
don’t need to create the mapping model yourself—is that if you use an inferred
model and you use the SQLite store, then Core Data can perform the migration in
situ (solely by issuing SQL statements). This can represent a significant
performance benefit as Core Data doesn’t have to load any of your data. Because
of this, you are encouraged to use inferred migration where possible, even if
the mapping model you might create yourself would be trivial.


## Mapping Model
