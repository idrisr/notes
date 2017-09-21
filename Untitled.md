~~image upside down~~

fetch controller

# photo tab

* show camera modally over the whole thing, dont switch tabs.
* if there are some photos, goto AddedPhotos
* if there are no photos, goto Camera
* on cancel go back to where you were

-- delete the nav vc from the photos sb, set its needs NavVC to 

--

slider labels

filter + search do something

close button --> AddedPhotosViewController


--
`NSFetchedResultsController`

You use a fetched results controller to efficiently manage the results returned from a Core Data fetch request to provide data for a UITableView object.

`NSFetchedResultsControllerDelegate`

An instance of NSFetchedResultsController uses methods in this protocol to notify its delegate that the controller’s fetch results have been changed due to an add, remove, move, or update operations.



`NSFetchRequestResult`

`NSPredicate`

The NSPredicate class is used to define logical conditions used to constrain a search either for a fetch or for in-memory filtering.