# Health Kit

HealthKit saves data in an encrypted database called the HealthKit store. You
can access this database using the `HKHealthStore` class. Both iPhone and Apple
Watch have their own HealthKit store. Health data is synced between Apple Watch
and iPhone; however, old data is periodically purged from Apple Watch to save
space. Use the `earliestPermittedSampleDate()` method to determine the age of the
oldest sample on Apple Watch.

# Privacy

Users can grant or deny permission separately for each type of data. For
example, a user could let your app read the step count data but prevent it from
reading the blood glucose level. To prevent possible information leaks, an app
does not know whether it has been denied permission to read data. From the app’s
point of view, if the app has been denied permission to read data, no data of
that type exists.

## HKHealthStore

## HKQuantity

## HKWorkout

## HKUnit
Use the HKUnit class to manage units of measure within HealthKit.
