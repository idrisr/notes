# Web Development    
bare metal

from this excellent [course](http://pgbovine.net/web-programming-lectures.htm)
from Philip Guo

## CGI

not that CGI, but Common Gateway Interface

* static pages served directly
* dynamic pages processed through `cgi_bin`

env var `QUERY_STRING`

`POST` passes in data through `stdin`

`GET` passes in through `${QUERY_STRING}`
