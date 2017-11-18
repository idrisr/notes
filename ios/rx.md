# Subjects

## PublishSubjects
starts empty and only emits new elements to subscribers

## BehaviorSubjects
starts with an initial value and replays it or the latest element to new
subscribers

## ReplaySubjects
initialized with a buffer size and will maintain a buffer of elements up to that
size and replay it to new subscribers

## Variable
wraps a BehaviorSubject, preserves its current value as state, and replays onto
the latest/initial value to new subscribers
