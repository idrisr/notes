# Cloud Firestore

* near realtime
* or manual
* multi region replication
* strong consistency
* cloud functions

## Documents

## Collections

## Queries
* documents in one collection in subcollection
* cant query across collections, ie collection group query
* no joins
* results are shallow... dont get subcollections and documents
* time to run query propoertional to documents returned, not searched
* because indexes

## Classes

`FIRFirestore`

`FIRDocumentReference`

`FIRCollectionReference`

`FIRQuerySnapshot`

```
service cloud.firestore {
  match /databases/{database}/documents {
    match /lists/{listId} {
        // Allow RW on lists for owner, shared user or for everyone if it's a new list
      allow read, write: if resource.data.owner == request.auth.token.email ||
                            request.auth.token.email in resource.data.writeAccess ||
                            !exists(/databases/$(database)/documents/lists/$(listId))
    }
    match /lists/{listId}/items/{itemId} {
        // Allow RW on item for owner or shared user of parent list
        allow read, write: if get(/databases/$(database)/documents/lists/$(listId)).data.owner == request.auth.token.email ||
                              request.auth.token.email in get(/databases/$(database)/documents/lists/$(listId)).data.writeAccess ||
                             !exists(/databases/$(database)/documents/lists/$(listId)) // Needed for new lists. Because lists and items are created in a batch
    }
  }
}
```
