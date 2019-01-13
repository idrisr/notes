# Functions

## Triggers
* http triggers
* database events
* remote config changes

## CLI deployment
```bash
# view logs for a function
firebase functions:log --only `function-name`
```

```bash
# deploy select functions
firebase deploy --only functions:`func1`, `func2`
```

### invoking locally
[readme](https://firebase.google.com/docs/functions/local-emulator)

```bash
# run REPL shell from CLI
firebase functions:shell
```