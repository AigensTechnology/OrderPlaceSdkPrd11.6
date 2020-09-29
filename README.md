# OrderPlaceSdkPrd11.6

If you need to Uat, please integrate [OrderPlaceSdkPrd11.5
](https://github.com/AigensTechnology/OrderPlaceSdkPrd11.5)

## config params ref

https://docs.google.com/document/d/1YkTXzsdmWD7Q8BgLVWlekI6nyiS1wcU2Y6T2aHUKiJw/edit?usp=sharing

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements
* You must include the following key in info plist.
	- Info.plist must contain an NSCameraUsageDescription key with a string value explaining to the user how the app uses this data.
	- The app's Info.plist must contain an NSLocationWhenInUseUsageDescription key with a string value explaining to the user how the app uses this data
* set targets -> Build Setting -> search 'bitcode' -> Enable Bitcode: No
## Installation

OrderPlaceSdkPrd11.5 is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

* This is core function, including (scan / gps / apple pay)

```ruby
platform :ios, '9.0'

target 'YourProjectName' do

  use_frameworks!

pod 'OrderPlaceSdkPrd11.5', '~> 0.3.0'

end

```

* If you want the alipay feature,pls

```rb
pod 'OrderPlaceSdkPrd11.5/Alipay', '~> 0.3.0'
```
* If you want the wechat pay feature,pls

```rb
pod 'OrderPlaceSdkPrd11.5/Wechat', '~> 0.3.0'
```

## Author

Aigens

## License

coming soon


## update record

0.3.0
alipay & wechat , support WKWebview


