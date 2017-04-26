//
//  YJSocailUserInfo.h
//  第三方分享和登录Module
//
//  Created by yj on 17/3/13.
//  Copyright © 2017年 yj. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface YJSocailUserInfo : NSObject
// 授权信息
@property (nonatomic, copy) NSString  *uid;
@property (nonatomic, copy) NSString  *openid;
@property (nonatomic, copy) NSString  *refreshToken;
@property (nonatomic, copy) NSDate    *expiration;
@property (nonatomic, copy) NSString  *accessToken;

// 用户信息
@property (nonatomic, copy) NSString  *name;
@property (nonatomic, copy) NSString  *iconurl;
@property (nonatomic, copy) NSString  *gender;
@end
