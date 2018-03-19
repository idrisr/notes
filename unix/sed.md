# `sed`

first of, `sed` is da `shit`

## Print from match to end of file
```bash
# print from empty line to end of file
# you have a http response file, print after the first blank line, ie skip the headers
sed -n -e '/^$/,$p' MyHttpResponse.txt
```
