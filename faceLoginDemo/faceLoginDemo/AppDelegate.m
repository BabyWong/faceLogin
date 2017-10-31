//
//  AppDelegate.m
//  faceLoginDemo
//
//  Created by hwm on 2017/10/26.
//  Copyright © 2017年 hwm. All rights reserved.
//

#import "AppDelegate.h"
#import "SIDHeader.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // -------  初始化SDK --------
    // ------ 请登录官网 创建应用, 获取相应的ID和AppSecret -----
    [SuperID registerAppWithAppID:@"65e34c9d83f2fc4f630dc8ff" withAppSecret:@"887e79c42005be438a9bf1cb"];
    //开启一登SDK的调试模式，开发者在Release时，将该模式设置为NO.
    [SuperID setDebugMode:YES];
    //设置一登 SDK 的语言模式，默认为自动模式。
    [SuperID setLanguageMode:SIDAutoMode];
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
