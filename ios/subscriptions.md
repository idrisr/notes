
## StoreKit 2018 WWDC

#### 1. receive transaction

#### 2. verify authenticity
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

#### 3. update subscription status

## Storekit

`SKError`

`SKPayment`

`SKPaymentQueue`

`SKPaymentTransaction`

`SKPaymentTransactionObserver`

`SKProduct`

`SKProductsRequest`

`SKProductsRequestDelegate`

`SKProductsResponse`

`SKRequest`

## verify subscription
* find the `expires_date`

## status polling
* discover new transctions from your server


## In App Purchases

* consumables
* non consumables
* auto-renewable subscriptions
* non-renewing subscriptions

### ray w tutorial
from [here](https://www.raywenderlich.com/5456-in-app-purchase-tutorial-getting-started)

### tl;dr
* set up app store connect stuff
* ask apple for transaction history
* do payments through `StoreKit`

## receipt validation
[readme](https://developer.apple.com/library/archive/releasenotes/General/ValidateAppStoreReceipt/Introduction.html)

[andme](https://developer.apple.com/in-app-purchase/)


# WWDC 702 2016
* using store kit for in app purchases with swift 3

from [here](https://developer.apple.com/videos/play/wwdc2016/702/?time=1694)

## process
### load in-app identifier
* setup in iTunes Connect
* can bake into app or fetch from server

### fetch product info
* Localized
* `SKProductRequest`
* `SKProductResponse`

### show in-app UI
* asdf 

### make purchase
* add to payment queue
* add `SKPayment` to `SKPaymentQueue`

###  process transaction
* responsd to notifications

### make asset available
* give them what they paid for

### finish transaction
* tell payment queue that you're done

## Payment Queue
* the only source of truth for state
* observe it right on app start up `SKPaymentTransactionObserver`

## App store review
* must have a restore button
* separate from purchase
* restore is free, make UI reflect that
* must indicate a privacy policy URL
* app review comic book

# WWDC 301 2016 Expanded Subscriptions in iTunes

## in-app purchase
* digital content or service bought within the app
* app offering before purchasing add-ons
* subscription services

## subscription management
* subscription groups
* subscription levels