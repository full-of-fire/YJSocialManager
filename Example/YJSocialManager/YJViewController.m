//
//  YJViewController.m
//  YJSocialManager
//
//  Created by full-of-fire on 04/26/2017.
//  Copyright (c) 2017 full-of-fire. All rights reserved.
//

#import "YJViewController.h"
#import <YJSocialManager/YJSocialManger.h>
@interface YJViewController ()

@end

@implementation YJViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)requestQQLogin:(id)sender {
    
    
    [[YJSocialManger sharedManger] requestUserInfoWithPlatformType:YJSocialPlatfromType_QQ success:^(YJSocailUserInfo *userInfo) {
       
        NSLog(@"成功");
        
    } fail:^(NSError *error) {
        
        NSLog(@"失败");
    }];
    
}



@end
