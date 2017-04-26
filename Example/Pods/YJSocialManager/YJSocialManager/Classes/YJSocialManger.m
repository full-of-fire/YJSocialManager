//
//  YJSocialManger.m
//  第三方分享和登录Module
//
//  Created by yj on 17/3/13.
//  Copyright © 2017年 yj. All rights reserved.
//

#import "YJSocialManger.h"



@implementation YJSocialManger
+ (instancetype)sharedManger {

    static YJSocialManger *instance;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        
        instance = [[self alloc] init];
    });
    
    return instance;
}

- (void)registPlatform:(YJSocialPlatfromType)platform appKey:(NSString*)appKey appSecret:(NSString*)appSecret redirectURL:(NSString*)redirectURL {

    [[UMSocialManager defaultManager] setPlaform:(UMSocialPlatformType)platform appKey:appKey appSecret:appSecret redirectURL:redirectURL];
}


- (void)startSocialSDKWithAppKey:(NSString*)appKey openLog:(BOOL)openLog{

    [[UMSocialManager defaultManager] setUmSocialAppkey:appKey];
    
    [[UMSocialManager defaultManager] openLog:openLog];
    
  
}

- (BOOL)handldeOpenURL:(NSURL *)url {

    return [[UMSocialManager defaultManager] handleOpenURL:url];
    
}

- (BOOL)handleOpenURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation {

    return [[UMSocialManager defaultManager] handleOpenURL:url sourceApplication:sourceApplication annotation:annotation];
}

- (BOOL)isInstallPlatformType:(YJSocialPlatfromType)platformType {

    
    return [[UMSocialManager defaultManager] isInstall:(UMSocialPlatformType)platformType];
}


- (void)shareWebPageWithPlatformType:(YJSocialPlatfromType)platformType webPageURL:(NSString*)webPageURL title:(NSString*)title summary:(NSString*)summary thumImage:(id)thumImage currentViewController:(UIViewController*)currentViewController success:(void(^)())success fail:(void(^)(NSError*error))fail {


    UMSocialMessageObject *messageObject = [UMSocialMessageObject messageObject];
    
    UMShareWebpageObject *shareObject = [UMShareWebpageObject shareObjectWithTitle:title descr:summary thumImage:thumImage];
    shareObject.webpageUrl =  webPageURL;
    messageObject.shareObject = shareObject;
    
    
    
    
    [[UMSocialManager defaultManager] shareToPlatform:(UMSocialPlatformType)platformType messageObject:messageObject currentViewController:currentViewController completion:^(id result, NSError *error) {
      
        if (error) {
            UMSocialLogInfo(@"************Share fail with error %@*********",error);
            if (fail) {
                
                fail(error);
            }
            
        }else{
            if ([result isKindOfClass:[UMSocialShareResponse class]]) {
                UMSocialShareResponse *resp = result;
                //分享结果消息
                UMSocialLogInfo(@"response message is %@",resp.message);
                //第三方原始返回的数据
                UMSocialLogInfo(@"response originalResponse data is %@",resp.originalResponse);
              
                
            }else{
                
                
                UMSocialLogInfo(@"response data is %@",result);
                
            }
            
            if (success) {
                
                success();
            }
//            NSLog(@"分享结果");
            
        }
        
        
        

        
    }];
    
    
}


- (void)requestUserInfoWithPlatformType:(YJSocialPlatfromType)platformType success:(void(^)(YJSocailUserInfo* userInfo))success fail:(void(^)(NSError*error))fail {

    
    [[UMSocialManager defaultManager] getUserInfoWithPlatform:(UMSocialPlatformType)platformType currentViewController:nil completion:^(id result, NSError *error) {
        if (error) {
            
            if (fail) {
                fail(error);
            }
        } else {
            UMSocialUserInfoResponse *resp = result;
            
            YJSocailUserInfo *userInfo = [[YJSocailUserInfo alloc] init];
            userInfo.uid = resp.uid;
            userInfo.accessToken = resp.accessToken;
            userInfo.refreshToken = resp.refreshToken;
            userInfo.expiration = resp.expiration;
            userInfo.name = resp.name;
            userInfo.iconurl = resp.iconurl;
            userInfo.gender = resp.gender;
            
            if (success) {
                
                success(userInfo);
            }
            
            
            // 授权信息
            NSLog(@"Sina uid: %@", resp.uid);
            NSLog(@"Sina accessToken: %@", resp.accessToken);
            NSLog(@"Sina refreshToken: %@", resp.refreshToken);
            NSLog(@"Sina expiration: %@", resp.expiration);
            
            // 用户信息
            NSLog(@"Sina name: %@", resp.name);
            NSLog(@"Sina iconurl: %@", resp.iconurl);
            NSLog(@"Sina gender: %@", resp.gender);
            
            // 第三方平台SDK源数据
            NSLog(@"Sina originalResponse: %@", resp.originalResponse);
        }
    }];
    
    

}


- (void)cancaleAuthWithPlatformType:(YJSocialPlatfromType)platformType success:(void(^)())success fail:(void(^)(NSError*error))fail {

    [[UMSocialManager defaultManager] cancelAuthWithPlatform:(UMSocialPlatformType)platformType completion:^(id result, NSError *error) {
        
        if (error) {
            
            if (fail) {
                fail(error);
            }
        }else {
        
            if (success) {
                success();
            }
            
        }
    }];
    
    
   
}



@end
