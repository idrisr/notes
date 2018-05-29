## Animating a table view header

* from [here](https://michiganlabs.com/ios/development/2016/05/31/ios-animating-uitableview-header/)
* read [me](https://medium.com/@yipyipisyip/swift-%EF%B8%8F-implementing-twitter-ios-app-ui-74c8a8cd0ff3)

### Main concepts
* measure scroll direction by tracking `contentOffset`'s states in `previousOffset`
* outlet to a header constraint
* header velocity same as scroll velocity
* handle bounces
* if content less than screen, dont collapse
* dont scroll when animating
  * ie only one or the other moving

* snap if scrolling stopped though an animation  
* animated a view in/out by its alpha
