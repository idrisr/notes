# `jq`

* https://stedolan.github.io/jq/

* https://jqplay.org/jq

```bash
# my.json
{
    "drink": [
        { "name": "tea", "calories": 150 },
        { "name": "water", "calories": 0 },
        { "name": "la croix", "calories": 1   }
    ],

    "food": [
        { "name": "cous cous", "calories": 150 },
        { "name": "onions", "calories": 55 },
        { "name": "gummi bears", "calories": 1000 }
    ]
}
```


```bash
# print and format it
jq '.' my.json
```

```bash
# print out top level drinks
jq '. | {drink}' my.json
```

```bash
# print out names of drinks

jq '. | {names: .drink[].name}' my.json
{ "names": "tea" }
{ "names": "water" }
{ "names": "la croix" }
```

##

```bash
# go one key in, get the array, then print just the keys
jq '.|{Sections}[] | keys' my.json
```

```bash
# select and filter
jq '.[] | select (.FieldType | contains("Select"))' fields.json
```


```bash
# count entries
# get into an array, then use length
jq '.|{Sections}[]| length' myjson.json
```

```bash
# get top level keys
jq '.| [keys]' | myJson.json
```

## recurse

## recurse
https://stedolan.github.io/jq/manual/
