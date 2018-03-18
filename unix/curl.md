# `curl`

* our good friend curl
* note, probably differences between GNU and BSD versions


```
# -v verbose
# -H header
# -d the data in a POST request

curl -v \
	-X POST \
	-H "Content-Type: application/x-www-form-urlencoded; charset=utf-8" \
	-H "Accept-Language: en;q=1.0" \
	-H "Accept: application/json" \
	-H "User-Agent: OrbitMobile/0.9 (my-user-agent)"
	-H "Accept-Encoding: gzip;q=1.0, compress;q=0.5" \
	-d "key1=value1&key2=value2" "http://my-url.com"
```