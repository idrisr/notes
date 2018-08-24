# DTrace

## probes


## Examples

### objc view controller
* dump out every hit (aka `probe`) that contains the Objective-C class
name that ends with `ViewController`


```bash
# -n {name}
# -p {process}

sudo dtrace -n 'objc$target:*ViewController::entry' -p `pgrep -i SpringBoard`
```


### match `viewWillAppear`
* will only match `-[UIViewController viewWillAppear:]`

```bash
sudo dtrace -n 'objc$target:UIViewController:-viewWillAppear?:entry
{ ustack(); }' -p `pgrep SpringBoard`
```


### Built-ins

#### `ustack()`
* dumps the userland stack trace when the method gets hit.
