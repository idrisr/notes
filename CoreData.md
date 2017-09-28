# Parent Child Context




### NSManagedObjectContext

An instance of `NSManagedObjectContext` represents a single “object space” or
scratch pad in an application. Its primary responsibility is to manage a
collection of managed objects. These objects form a group of related model
objects that represent an internally consistent view of one or more persistent
stores. A single managed object instance exists in one and only one context,
but multiple copies of an object can exist in different contexts. Thus object
uniquing is scoped to a particular context.

A context is not thread safe. You can only access it on the same thread that it was created.

## @NSManaged
`@NSManaged` now says 'compiler, don't check those properties as I have Core Data to take care of the implementation - it will be there at runtime'


### NSPersistentStore

This class is the abstract base class for all Core Data persistent stores.

Core Data provides four store types—SQLite, Binary, XML, and In-Memory (the XML
store is not available on iOS); these are described in Persistent Store
Features. Core Data also provides subclasses of `NSPersistentStore` that you
can use to define your own store types: `NSAtomicStore` and
`NSIncrementalStore`. The Binary and XML stores are examples of atomic stores
that inherit functionality from `NSAtomicStore`.

### NSPersistentContainer

`NSPersistentContainer` simplifies the creation and management of the Core Data
stack by handling the creation of the `NSManagedObjectModel`,
`NSPersistentStoreCoordinator`, and the `NSManagedObjectContext`.

### NSManagedObjectModel

An `NSManagedObjectModel` object describes a schema collection of entities
(data models) that you use in your application.

The model contains one or more `NSEntityDescription` objects representing the
entities in the schema. Each `NSEntityDescription` object has property
description objects (instances of subclasses of `NSPropertyDescription`) that
represent the properties (or fields) of the entity in the schema. The Core Data
framework uses this description in several ways:

* Constraining UI creation in Interface Builder
* Validating attribute and relationship values at runtime
* Mapping between your managed objects and a database or file-based schema for
  object persistence.

### NSPersistentStoreCoordinator

Instances of `NSPersistentStoreCoordinator` associate persistent stores (by
type) with a model (or more accurately, a configuration of a model) and serve
to mediate between the persistent store or stores and the managed object
context or contexts. Instances of `NSManagedObjectContext` use a coordinator to
save object graphs to persistent storage and to retrieve model information. A
context without a coordinator is not fully functional as it cannot access a
model except through a coordinator. The coordinator is designed to present a
façade to the managed object contexts such that a group of persistent stores
appears as an aggregate store. A managed object context can then create an
object graph based on the union of all the data stores the coordinator covers.

`NSPersistentStoreCoordinator` is the bridge between the managed object model and the persistent store. It’s responsible for using the model and the persistent stores to do most of the hard work in Core Data. It understands the `NSManagedObjectModel` and knows how to send information to, and fetch information from, the `NSPersistentStore`.

Because of the work the `NSPersistentStoreCoordinator` does, the `NSManagedObjetContext` does not need to worry about what kind of store is backing it.

### NSEntityDescription

An `NSEntityDescription` object describes an entity in Core Data. Entities are
to managed objects what Class is to id, or—to use a database analogy—what
tables are to rows. An instance specifies an entity’s name, its properties (its
attributes and relationships, expressed by instances of
`NSAttributeDescription` and `NSRelationshipDescription`) and the class by
which it is represented.

### NSPropertyDescription

The `NSPropertyDescription` class is used to define properties of an entity in
a Core Data managed object model. Properties are to entities what instance
variables are to classes.

### NSRelationshipDescription

`NSRelationshipDescription` extends `NSPropertyDescription` to describe
features appropriate to relationships, including cardinality (the number of
objects allowed in the relationship), the destination entity, and delete rules.

### NSAttributeDescription

`NSAttributeDescription` inherits from `NSPropertyDescription`, which provides
most of the basic behavior. Instances of `NSAttributeDescription` are used to
describe attributes, as distinct from relationships. The class adds the ability
to specify the attribute type, and to specify a default value. In a managed
object model, you must specify the type of all attributes—you can only use the
undefined attribute type (`NSUndefinedAttributeType`) for transient attribute

### NSFetchedResultsController

You use a fetched results controller to efficiently manage the results returned
from a Core Data fetch request to provide data for a `UITableView` object.

### NSFetchRequest

A description of search criteria used to retrieve data from a persistent store

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


### NSFetchRequestResult
protocol, not a class


    /* Protocol conformance for possible result types a fetch request can return.  */
    public protocol NSFetchRequestResult : NSObjectProtocol {
    }

### NSSortDescriptor

An NSSortDescriptor object describes a basis for ordering objects by specifying
the property to use to compare the objects, the method to use to compare the
properties, and whether the comparison should be ascending or descending.
Instances of NSSortDescriptor are immutable.

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

## NSPersistentStoreDescription
A description object used to create and/or load a persistent store.


## NSAsynchronousFetchRequest


## NSBatchUpdateRequest
