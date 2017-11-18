


```swift
amountToConvert.rx.text.map{ Double.init($0 ?? "0") ?? 0 }.bind(to: viewModel.sourceAmount).addDisposableTo(disposeBag)
```

direction UI -> ViewModel


```swift
viewModel.destinationAmount.asObservable().map{ "\($0)" }.bind(to: result.rx.text).addDisposableTo(disposeBag)
```

goes from ViewModel -> UI

wtih testing, you just trust it works for the view controller

in testing, you just test view model

https://github.com/technicallyerik/currencyconversion-ios
