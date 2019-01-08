
## StoreKit 2018 WWDC

1. receive transaction

2. verify authenticity
* app store receipt
* stored on device
* from the app store, signed by apple
* for your app on that device only
* on-device validation
* server to server validation
    * gives more information
    * less crytpo needed
    * apple encouraged
* dont use online validation directly from device

3. update subscription status

## Storekit

`SKPaymentTransactionObserver`

`SKPaymentQueue`

`SKPaymentTransaction`

## verify subscription
* find the `expires_date`

## status polling
* discover new transctions from your server