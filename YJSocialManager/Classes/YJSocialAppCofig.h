//
//  YJSocialAppCofig.h
//  第三方分享和登录Module
//
//  Created by yj on 17/3/13.
//  Copyright © 2017年 yj. All rights reserved.
//

#ifndef YJSocialAppCofig_h
#define YJSocialAppCofig_h

/*------------------平台类型----------------------*/
typedef NS_ENUM(NSUInteger,YJSocialPlatfromType){
    
    YJSocialPlatfromType_Sina               = 0, //新浪
    YJSocialPlatfromType_WechatSession      = 1, //微信聊天
    YJSocialPlatfromType_WechatTimeLine     = 2,//微信朋友圈
    YJSocialPlatfromType_WechatFavorite     = 3,//微信收藏
    YJSocialPlatfromType_QQ                 = 4,//QQ聊天页面
    YJSocialPlatfromType_Qzone              = 5,//qq空间
    YJSocialPlatfromType_TencentWb          = 6,//腾讯微博*/
};
/*------------------错误类型----------------------*/
typedef NS_ENUM(NSUInteger,YJSocialplatfromErrorType){

    YJSocialplatfromErrorType_Unknow            = 2000,            // 未知错误
    YJSocialplatfromErrorType_NotSupport        = 2001,            // 不支持（url scheme 没配置，或者没有配置-ObjC， 或则SDK版本不支持或则客户端版本不支持）
    YJSocialplatfromErrorType_AuthorizeFailed   = 2002,            // 授权失败
    YJSocialplatfromErrorType_ShareFailed       = 2003,            // 分享失败
    YJSocialplatfromErrorType_RequestForUserProfileFailed = 2004,  // 请求用户信息失败
    YJSocialplatfromErrorType_ShareDataNil      = 2005,             // 分享内容为空
    YJSocialplatfromErrorType_ShareDataTypeIllegal = 2006,          // 分享内容不支持
    YJSocialplatfromErrorType_CheckUrlSchemaFail = 2007,            // schemaurl fail
    YJSocialplatfromErrorType_NotInstall        = 2008,             // 应用未安装
    YJSocialplatfromErrorType_Cancel            = 2009,             // 取消操作
    YJSocialplatfromErrorType_NotNetWork        = 2010,             // 网络异常
    YJSocialplatfromErrorType_SourceError       = 2011,             // 第三方错误
    
    YJSocialplatfromErrorType_ProtocolNotOverride = 2013,   // 对应的	UMSocialPlatformProvider的方法没有实现
    YJSocialplatfromErrorType_NotUsingHttps      = 2014,   // 没有用https的请求,@see UMSocialGlobal isUsingHttpsWhenShareContent
    
};




#endif /* YJSocialAppCofig_h */
