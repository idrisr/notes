# `image`

```bash
image list
image list Foundation
image dump symtab UIKit -s address
image lookup -n "-[UIViewController viewDidLoad]"
image lookup -rn UIViewController
image lookup -rn '\[UIViewController\ '
image lookup -rn '\[UIViewController\(\w+\)\ '
```

```
command regex ivars 's/(.+)/expression -lobjc -O -- [%1 _ivarDescription]/'
command regex methods 's/(.+)/expression -lobjc -O -- [%1 _shortMethodDescription]/'
command regex lmethods 's/(.+)/expression -lobjc -O -- [%1 _methodDescription]/'
```
