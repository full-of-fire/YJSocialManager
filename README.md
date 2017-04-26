# YJSocialManager

[![CI Status](http://img.shields.io/travis/full-of-fire/YJSocialManager.svg?style=flat)](https://travis-ci.org/full-of-fire/YJSocialManager)
[![Version](https://img.shields.io/cocoapods/v/YJSocialManager.svg?style=flat)](http://cocoapods.org/pods/YJSocialManager)
[![License](https://img.shields.io/cocoapods/l/YJSocialManager.svg?style=flat)](http://cocoapods.org/pods/YJSocialManager)
[![Platform](https://img.shields.io/cocoapods/p/YJSocialManager.svg?style=flat)](http://cocoapods.org/pods/YJSocialManager)

## Example

1、To run the example project, clone the repo, and run `pod install` from the Example directory first.
2、初始化SDK

``` 
//1.注册微信、QQ、新浪SDK
[[YJSocialManger sharedManger] registPlatform:YJSocialPlatfromType_QQ appKey:QQAppID appSecret:QQAppSecret redirectURL:nil];
[[YJSocialManger sharedManger] registPlatform:YJSocialPlatfromType_WechatSession appKey:WXAppID appSecret:WXAppSecret redirectURL:nil];

[[YJSocialManger sharedManger] registPlatform:YJSocialPlatfromType_Sina appKey:KSinaAppKey appSecret:KSinaAppSecret redirectURL:kRedirectURI];

//2.注册UMSDK
[[YJSocialManger sharedManger] startSocialSDKWithAppKey:UMAppKey openLog:NO];
```
3、处理回调

``` 
#pragma mark - 回调
- (BOOL)application:(UIApplication *)application handleOpenURL:(NSURL *)url
{
BOOL result = [[YJSocialManger sharedManger] handldeOpenURL:url];

if (result == NO) {

//在这里调用其他SDK


}

return result;
}

- (BOOL)application:(UIApplication *)application
openURL:(NSURL *)url
sourceApplication:(NSString *)sourceApplication
annotation:(id)annotation
{
BOOL result = [[YJSocialManger sharedManger] handleOpenURL:url sourceApplication:sourceApplication annotation:annotation];

if (result == NO) {

//在这里调用其他SDK

}

return result;
}
```
4、添加`NSAppTransportSecurity`
```
<key>NSAppTransportSecurity</key>
<dict>
<key>NSAllowsArbitraryLoads</key>
<true/>
</dict>
```
添加白名单
```
<key>LSApplicationQueriesSchemes</key>
<array>
<!-- 微信 URL Scheme 白名单-->
<string>wechat</string>
<string>weixin</string>

<!-- 新浪微博 URL Scheme 白名单-->
<string>sinaweibohd</string>
<string>sinaweibo</string>
<string>sinaweibosso</string>
<string>weibosdk</string>
<string>weibosdk2.5</string>

<!-- QQ、Qzone URL Scheme 白名单-->
<string>mqqapi</string>
<string>mqq</string>
<string>mqqOpensdkSSoLogin</string>
<string>mqqconnect</string>
<string>mqqopensdkdataline</string>
<string>mqqopensdkgrouptribeshare</string>
<string>mqqopensdkfriend</string>
<string>mqqopensdkapi</string>
<string>mqqopensdkapiV2</string>
<string>mqqopensdkapiV3</string>
<string>mqqopensdkapiV4</string>
<string>mqzoneopensdk</string>
<string>wtloginmqq</string>
<string>wtloginmqq2</string>
<string>mqqwpa</string>
<string>mqzone</string>
<string>mqzonev2</string>
<string>mqzoneshare</string>
<string>wtloginqzone</string>
<string>mqzonewx</string>
<string>mqzoneopensdkapiV2</string>
<string>mqzoneopensdkapi19</string>
<string>mqzoneopensdkapi</string>
<string>mqqbrowser</string>
<string>mttbrowser</string>
</array>
```
5、配置URL Scheme
![11474533850_.pic_hd.jpeg](http://upload-images.jianshu.io/upload_images/970305-38d78f9660e9b777.jpeg?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
配置规则如下

![QQ20170426-0.png](http://upload-images.jianshu.io/upload_images/970305-b2b1c422e72e921d.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
具体规则请求各自平台的开发者平台文档


## Requirements

## Installation

YJSocialManager is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "YJSocialManager"
```

## Author

full-of-fire, 591730822@qq.com

## License

YJSocialManager is available under the MIT license. See the LICENSE file for more info.
