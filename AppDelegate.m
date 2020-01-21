//
//  AppDelegate.m
//  Card
//
//  Created by ios group on 2019/11/12.
//  Copyright © 2019年 熊宁畅. All rights reserved.
//

#import "AppDelegate.h"
#import "CardTableViewController.h"
#import "S.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    
    
    self.window=[[UIWindow alloc]initWithFrame:[[UIScreen mainScreen]bounds]];
    
    self.window.backgroundColor=[UIColor whiteColor];
    CardTableViewController *TableView=[[CardTableViewController alloc]init];
    S *simple=[[S alloc]init];
//    UINavigationController *root=[[UINavigationController alloc]initWithRootViewController:TableView];
    
//    UIImageView *back=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"timg"]];
//    [back setContentMode:UIViewContentModeScaleAspectFill];
//    back.frame=[UIScreen mainScreen].bounds;
//    [root.view insertSubview:back atIndex:0];
    
    self.window.rootViewController=TableView;
    [self.window makeKeyAndVisible];
    
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
