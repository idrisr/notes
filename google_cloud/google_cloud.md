# Google Cloud

* from [Google Could export/import](https://firebase.google.com/docs/firestore/manage-data/export-import)
* and [Google Cloud Firestore](https://cloud.google.com/sdk/gcloud/reference/beta/firestore/)
* and [Google cloud](https://cloud.google.com/storage/docs/gsutil/commands/cp)

[API Explorer](https://developers.google.com/apis-explorer)

## Firebase


### change the project
```bash
gcloud config set project [PROJECT_ID]
```

### export data
```bash
gcloud beta firestore export gs://[BUCKET_NAME]
```

### import data
```bash
gcloud beta firestore import gs://[BUCKET_NAME]/[EXPORT_PREFIX]/
```

### list auth
```bash
gcloud auth list
```

## Buckets
```bash
gsutil cp -r dir gs://my-bucket
```

```bash
# make a bucket
gsutil mb -c nearline gs://some-bucket
```

# Terms and Miscellany
* base CPU
* base GPU

## GCloud Command Line
* https://cloud.google.com/sdk/gcloud/?authuser=1