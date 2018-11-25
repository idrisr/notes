# Firebase Auth

```swift
Auth.auth().currentUser
Auth.auth().createUser(withEmail: credentials.email, password: credentials.password) { (user, error)
Auth.auth().signIn(withEmail: credentials.email, password: credentials.password) { (user, error)
Auth.auth().signOut()
Auth.auth().sendPasswordReset(withEmail: email) { (error) in
```
