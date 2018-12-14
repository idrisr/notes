# Google Cloud

from [here](https://firebase.google.com/docs/firestore/manage-data/export-import)
and [here](https://cloud.google.com/sdk/gcloud/reference/beta/firestore/)

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