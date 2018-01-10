# Glacier

from [here](https://docs.aws.amazon.com/cli/latest/reference/glacier/index.html)


```bash
# list vaults default account
aws glacier list-vaults --account-id -
```

```bash
aws glacier upload-archive --account-id - --vault-name my-vault --body archive.zip
```
