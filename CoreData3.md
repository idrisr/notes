## @NSManaged
`@NSManaged` now says 'compiler, don't check those properties as I have Core Data to take care of the implementation - it will be there at runtime'

## NSPersistentStoreCoordinator
`NSPersistentStoreCoordinator` is the bridge between the managed object model and the persistent store. It’s responsible for using the model and the persistent stores to do most of the hard work in Core Data. It understands the `NSManagedObjectModel` and knows how to send information to, and fetch information from, the `NSPersistentStore`.

Because of the work the `NSPersistentStoreCoordinator` does, the `NSManagedObjetContext` does not need to worry about what kind of store is backing it.

## NSManagedObjectContext
A context is not thread safe. You can only access it on the same thread that it was created.

## NSManagedObjectID
An `NSManagedObjectID` object is a compact, universal identifier for a managed
object. This forms the basis for uniquing in the Core Data Framework. A managed
object ID uniquely identifies the same managed object both between managed
object contexts in a single application, and in multiple applications (as in
distributed systems). Identifiers contain the information needed to exactly
describe an object in a persistent store (like the primary key in the
database), although the detailed information is not exposed. The framework
completely encapsulates the “external” information and presents a clean object
oriented interface.

## NSPersistentStore
This class is the abstract base class for all Core Data persistent stores.

## NSPersistentStoreDescription
A description object used to create and/or load a persistent store.

## NSFetchRequest

5 different ways to set up a `NSFetchRequest`

1 - use the generic type and then set the entity

    let fetchRequest1 = NSFetchRequest<Venue>()
    let entity = NSEntityDescription.entity(forEntityName: "Venue", in: managedContext)!
    fetchRequest1.entity = entity

2 - use the convenience initializer

    let fetchRequest2 = NSFetchRequest<Venue>(entityName: "Venue")

3 - use the auto-generated class method xcode makes

    let fetchRequest3: NSFetchRequest<Venue> = Venue.fetchRequest()
4 - get it from the model and template

    let fetchRequest4 = managedObjectModel.fetchRequestTemplate(forName: "venueFR")

5 - get it from the model and template and do substitution

    let fetchRequest5 = managedObjectModel.fetchRequestFromTemplate( withName: "venueFR", substitutionVariables: ["NAME" : "Vivi Bubble Tea"])


## NSAsynchronousFetchRequest


## NSBatchUpdateRequest
