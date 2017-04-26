//
//  YJSocialManger.h
//  第三方分享和登录Module
//
//  Created by yj on 17/3/13.
//  Copyright © 2017年 yj. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <UMSocialCore/UMSocialCore.h>
#import "YJSocialAppCofig.h"
#import "YJSocailUserInfo.h"

@interface YJSocialManger : NSObject

+ (instancetype)sharedManger;

- (void)registPlatform:(YJSocialPlatfromType)platform appKey:(NSString*)appKey appSecret:(NSString*)appSecret redirectURL:(NSString*)redirectURL;

- (void)startSocialSDKWithAppKey:(NSString*)appKey openLog:(BOOL)openLog;

- (BOOL)handldeOpenURL:(NSURL*)url;
- (BOOL)handleOpenURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation;

- (BOOL)isInstallPlatformType:(YJSocialPlatfromType)platformType;

/**
 分享网页

 @param platformType          平台类型
 @param webPageURL            网页链接
 @param title                 标题
 @param summary               简介
 @param thumImage             缩略图 UIImage或者NSData类型或者NSString类型（图片url）
 @param currentViewController 所在控制器
 */
- (void)shareWebPageWithPlatformType:(YJSocialPlatfromType)platformType webPageURL:(NSString*)webPageURL title:(NSString*)title summary:(NSString*)summary thumImage:(id)thumImage currentViewController:(UIViewController*)currentViewController success:(void(^)())success fail:(void(^)(NSError*error))fail;


/**
 请求第三方登录授权

 @param platformType 平台类型
 @param success      成功回调
 @param fail         失败回调
 */
- (void)requestUserInfoWithPlatformType:(YJSocialPlatfromType)platformType success:(void(^)(YJSocailUserInfo* userInfo))success fail:(void(^)(NSError*error))fail;


/**
 取消授权

 @param platformType 平台类型
 @param success      成功回调
 @param fail         失败回调
 */
- (void)cancaleAuthWithPlatformType:(YJSocialPlatfromType)platformType success:(void(^)())success fail:(void(^)(NSError*error))fail;

@end
