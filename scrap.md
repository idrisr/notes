```swift
//--------------------------------------
// MARK: - TableView
//--------------------------------------
override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
  let selectedCell = tableView.cellForRow(at: indexPath)

  if isPresentingAnotherVC == false {
    isPresentingAnotherVC = true

    if selectedCell == propertiesCell {
      shouldSegueForward(toVC: PropertiesViewController.self)
        ? performSegue(withIdentifier: SegueIDs.toPropertiesSegue, sender: self)
        : performSegue(withIdentifier: SegueIDs.unwindToPropertiesSegue, sender: self)

    } else if selectedCell == expensesCell {
      shouldSegueForward(toVC: ExpensesViewController.self)
        ? performSegue(withIdentifier: 	SegueIDs.toExpensesSegue, sender: self)
        : performSegue(withIdentifier: SegueIDs.toExpensesSegue, sender: self)
    }
  }
}
```
