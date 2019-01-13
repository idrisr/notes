# `curl`

* our good friend curl
* note, probably differences between GNU and BSD versions


```sh
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

```
# download links in a file
xargs -n 1 curl -O < your_files.txt
```

```sh
# POST with body
curl --header "Content-Type: application/json" \
  --request POST \
  --data '{"username":"xyz","password":"xyz"}' \
  http://localhost:3000/api/login
```