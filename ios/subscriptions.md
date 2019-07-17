
[subscription HIG](https://developer.apple.com/app-store/subscriptions/)

https://developer.apple.com/videos/play/tech-talks/803/

## StoreKit 2018 WWDC

# expirations
from [here](https://davidbarnard.com/post/164337147440/testing-auto-renewable-subscriptions-on-ios)


```
Actual subscription duration -> Test duration
1 week -> 3 minutes
1 month -> 5 minutes
2 months -> 10 minutes
3 months -> 15 minutes
6 months -> 30 minutes
1 year -> 1 hour
```

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

`SKProductDiscount`

`SKProductsRequest`

`SKProductsRequestDelegate`

`SKProductsResponse`

`SKProductSubscriptionPeriod`

`SKStoreReviewController`

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

from [here](https://developer.apple.com/videos/play/wwdc2016/702/)

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

# WWDC 704 2018 best practices with in app purchases
## sandbox testing
* no charges
* dedicated sandbox account


* based on certificate used to sign app
* dev cert - sandbox
* prod cert - production

# WWDC 705 2018 Engineering Subscriptions
[in app purchasing guide](https://developer.apple.com/library/archive/documentation/NetworkingInternet/Conceptual/StoreKitGuide/Introduction.html)


# In App Purchasing Programming Guide

* app responsible for calculating the time period that the subscription is active
* and determining what content needs to be made available to the user.
* app responsible for detecting that a subscription is approaching its expiration date
* prompting the user to renew the subscription by purchasing the product again.

* app is responsible for making subscriptions available across all the user’s
devices after they’re purchased and for letting users restore past purchases.
For example, most subscriptions are provided by a server; your server would
need some mechanism to identify users and associate subscription purchases
with the user who purchased them
