//
//  RITAppDelegate.m
//  12BlocksTestHW01
//
//  Created by Pronin Alexander on 09.02.14.
//  Copyright (c) 2014 Pronin Alexander. All rights reserved.
//

#import "RITAppDelegate.h"

typedef void(^testBlockType01)(void);
typedef void(^testBlockType02)(NSString* s01, NSString* s02);

@implementation RITAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    // 01.01
    NSLog(@"01.01");
    void (^testBlock01)(void);
    testBlock01 = ^{
        NSLog(@"testBlock01");
    };
    testBlock01();
    NSLog(@"\n");
    
    // 01.02
    NSLog(@"01.02");
    void (^testBlock02)(NSString*, NSString*) = ^(NSString* string01, NSString* string02){
        NSLog(@"testBlock02: string01 = '%@', string02 = '%@'", string01, string02);
    };
    testBlock02(@"test01", @"test02");
    NSLog(@"\n");
    
    // 01.03
    NSLog(@"01.03");
    testBlockType01 tb01 = ^{
        NSLog(@"testBlockType01");
    };
    tb01();
    
    testBlockType02 tb02 = ^(NSString* string01, NSString* string02){
        NSLog(@"testBlockType02: string01 = '%@', string02 = '%@'", string01, string02);
    };
    tb02(@"test01", @"test02");
    NSLog(@"\n");
    
    // 01.04
    NSLog(@"01.04");
    [self testBlockMethod:^{
        NSLog(@"Test 04");
    }];
    
    return YES;
}

- (void) testBlockMethod: (testBlockType01) block {
    block();
}

/*
- (void) testBlockMethod1: (testBlockType02) bl {
    bl(s01, s02);
}

- (void) testBlockMethod2: (void(^)(NSString* s01, NSString* s02)) bl {
    bl(s01, s02);
}
*/

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
