# TestCanOpenUrlApi

#### 此專案為測試 canOpenUrl 功能
Apple 在 iOS 9 針對該 api 限制，簡單測試一下 api，
以下為 Apple 在官網提供的部分訊息
另外，也參考別篇 blog

[canOpenURL](https://developer.apple.com/documentation/uikit/uiapplication/1622952-canopenurl?language=objc)

[iOS9 以后 openURL 和 canOpenURL 使用限制的小误区](https://kangzubin.com/ios9-openurl/)

```
If your app is linked against an earlier version of iOS 
but is running in iOS 9.0 or later, you can call this method up to 50 times. 
After reaching that limit, subsequent calls always return NO. 
If the user reinstalls or upgrades the app, iOS resets the limit.

Unlike this method, the openURL:options:completionHandler: 
method is not constrained by the LSApplicationQueriesSchemes requirement. 
If an app is available to handle the URL, the system will launch it,
whether or not you have declared the scheme.
```
