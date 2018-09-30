
```bash
# list kernel extensions
kextstat | grep -v com.apple


# list non apple kernel extensions
kextstat | ack -v com.apple
```

```
kextcache(8), kextd(8), kextload(8), kextunload(8), kextutil(8)
```

kextunload
