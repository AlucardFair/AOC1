//
//  AppDelegate.m
//  Project-1
//
//  Created by Zachery Hernandez on 9/25/12.
//  Copyright (c) 2012 Zachery Hernandez. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    // Set Float //
    float tempNum = 95.5f;
    // Set Int //
    int tempRound = 95;
    // Set BOOL Values //
    BOOL tempHot = YES;
    BOOL tempCold = NO;
    
    // Call exact Float //
    NSLog(@"tempNum = %f", tempNum);
    // Call Float with Cast //
    NSLog(@"tempNum = %f", tempNum);
    // Call Float with Set Decimal Point //
    NSLog(@"tempNum = %.1f", tempNum);
    
    // And Or Comparison //
    if ((tempNum == 100.1) && (tempHot == YES))
    {
        NSLog(@"It is a very hot day today.");
    }
    else if ((tempRound == 95) || (tempCold == NO))
    {
        NSLog(@"It is warm, but not cold,");
    }
    else
    {
        NSLog(@"It is not very warm today");
    }
    
    // For Loop //
    for (int x=0; x<=100; x++)
    {
        NSLog(@"x = %d", x);
    }
    
    // Nested Loop Inside Conditional (if else) //
    if (tempRound == 95)
    {
        for (int y=95; y>0; y--)
        {
            NSLog(@"tempRound = %d", y);
        }
    }
    else if (tempRound == 96)
    {
        NSLog(@"That is too many to count.");
    }
    else
    {
        NSLog(@"There is nothing here to count.");
    }
    
    return YES;
}

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
