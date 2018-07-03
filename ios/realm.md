# Realm

* `NotificationToken`
* `.realm`
* `realm.delete(self)`
* `Realm.init(configuration: myConfig>)`

## Configs
Realm keeps a map of all currently active Realms in your app. Then, any time you
would try to create a new Realm, you’ll actually get a shared instance if you’re
already actively using it from another spot in the same thread. This lets Realm
provide several runtime optimizations:

As a rule of thumb, try to always create a local Realm instance via
`Realm(configuration:)` as it’ll help you keep your code thread-safe and make sure
you always get a Realm for the specific thread you’re working on. This is part
of Realm’s multi-threading strategy, designed to aid you in creating safe,
concurrent code.
