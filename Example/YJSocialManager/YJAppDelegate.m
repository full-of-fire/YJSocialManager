//
//  YJAppDelegate.m
//  YJSocialManager
//
//  Created by full-of-fire on 04/26/2017.
//  Copyright (c) 2017 full-of-fire. All rights reserved.
//

//友盟的appKey
#define UMAppKey @"56e27cba67e58ef1b8000225"
// 微信
#define WXAppID @"wx9b1115ae58a598e6"
#define WXAppSecret @"e197cd74681e57607b1beaca634ba2fb"

// QQ
#define QQAppID @"1105134441"
#define QQAppSecret @"HjlVIac2uURp3jry"

// 新浪2045436852,1376281532
#define KSinaAppKey @"1376281532"
#define KSinaAppSecret @"17b54f18dcbca79df327eecf0aa8c3b7"
#define kRedirectURI @"https://api.weibo.com/oauth2/default.html"

#import "YJAppDelegate.h"
#import <YJSocialManager/YJSocialManger.h>
@implementation YJAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    //1.注册微信、QQ、新浪SDK
    [[YJSocialManger sharedManger] registPlatform:YJSocialPlatfromType_QQ appKey:QQAppID appSecret:QQAppSecret redirectURL:nil];
    [[YJSocialManger sharedManger] registPlatform:YJSocialPlatfromType_WechatSession appKey:WXAppID appSecret:WXAppSecret redirectURL:nil];
    
    [[YJSocialManger sharedManger] registPlatform:YJSocialPlatfromType_Sina appKey:KSinaAppKey appSecret:KSinaAppSecret redirectURL:kRedirectURI];
    
    //2.注册UMSDK
    [[YJSocialManger sharedManger] startSocialSDKWithAppKey:UMAppKey openLog:NO];

    
    
    return YES;
}


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



@end
