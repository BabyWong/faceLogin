//
//  ViewController.m
//  faceLoginDemo
//
//  Created by hwm on 2017/10/26.
//  Copyright © 2017年 hwm. All rights reserved.
//

#import "ViewController.h"
#import "SIDHeader.h"

@interface ViewController ()
@property (nonatomic, strong) UIButton *loginBtn;
@end

@implementation ViewController
#define kScreenWidth [UIScreen mainScreen].bounds.size.width
#define kScreenHeight [UIScreen mainScreen].bounds.size.height
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self CreatLoginBtn];
}

- (void)CreatLoginBtn {
    
    _loginBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    _loginBtn.titleLabel.font = [UIFont systemFontOfSize:16];
    [_loginBtn setTitle:@"  刷脸登录  " forState:UIControlStateNormal];
    [_loginBtn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    _loginBtn.layer.cornerRadius = 4;
    _loginBtn.layer.borderWidth = 1;
    _loginBtn.layer.borderColor = [UIColor redColor].CGColor;
    _loginBtn.layer.masksToBounds = YES;
    [_loginBtn addTarget:self action:@selector(saoYiSao) forControlEvents:UIControlEventTouchUpInside];
    //loginBtn.frame = CGRectMake(kScreenWidth / 2 - 30, kScreenHeight / 2 - 20, 60, 44);
    [_loginBtn sizeToFit];
    _loginBtn.center = CGPointMake(kScreenWidth / 2 , kScreenHeight / 2 );
    [self.view addSubview:_loginBtn];
}

- (void)saoYiSao {
    
    // 用户点击熟练登录时,若已获取用户部分信息:
    //创建用户信息 model 对象
    SIDAppUserInfoModel *userModel = [[SIDAppUserInfoModel alloc] init];
    //刷脸登录时,已获取用户的手机号
    userModel.phone = @"138####1234";
    //刷脸登录时,已获取用户姓名
    userModel.name = @"user name";
    
    //一登刷脸登录,弹出一登刷脸VC
    [SIDCoreLoginKit showLoginViewControllerWithAppUserInfoModel:nil responseBlock:^(NSDictionary *result, NSError *error) {
        
        if (!error) {
            //授权登录成功
            NSLog(@"userInfo:%@", result);
            
//            [ZLCore save_user_info_with_member:result];
//            [UIApplication sharedApplication].keyWindow.rootViewController = [[BaseTabBarController alloc] init];
            self.view.backgroundColor = [UIColor yellowColor];
            [_loginBtn setTitle:@"  退出登录  " forState:UIControlStateNormal];
            [self removeFromParentViewController];
            
        }else {
            //授权登录失败
            NSLog(@"Login Fail Error =%ld,%@",(long)[error code],[error localizedDescription]);
        }
        
    }];
    
}



@end
