# Core Data

## Four major parts

`NSManagedObject`

our top level objects

`NSManagedObjectContext`

keeps track of all the objects within it

`NSPersistentStoreCoordinator`

`NSPersistentStore`

`NSPersistentContainer` simplifies the creation and management of the Core Data stack by handling the creation of the `NSManagedObjectModel`, `NSPersistentStoreCoordinator`, and the `NSManagedObjectContext`.