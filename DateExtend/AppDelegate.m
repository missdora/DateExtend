//
//  AppDelegate.m
//  DateExtend
//
//  Created by Black Black on 5/28/13.
//  Copyright (c) 2013 blackXblack. All rights reserved.
//

#import "AppDelegate.h"
#import "DateExtend.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    NSCalendar *calendar = [NSCalendar currentCalendar];
    DateExtend *date = [[DateExtend alloc] initWithCalendar:calendar];
    NSLog(@"date %@ year %d", [date toString:@"yyyy-MM-dd HH:mm:ss"], [date year]);
    NSLog(@"week of month %d", [date weekOfMonth]);
    NSLog(@"week of year %d", [date weekOfYear]);
    
    DateExtend *dateA = [[DateExtend alloc] initWithCalendar:calendar dateStr:@"2013-05-29" dateFormat:@"yyyy-MM-dd"];
    
    DateExtend *dateB = [[DateExtend alloc] initWithCalendar:calendar dateStr:@"2013-05-01" dateFormat:@"yyyy-MM-dd"];
    NSLog(@"day diff %d", [dateA diffDay:dateB]);
    NSLog(@"week diff %d", [dateA diffWeek:dateB]);
    
    DateExtend *dateC = [[DateExtend alloc] initWithCalendar:calendar dateStr:@"2013-01-01" dateFormat:@"yyyy-MM-dd"];
    NSLog(@"month diff %d", [dateA diffMonth:dateC]);
    
    NSLog(@"dateB add 28 days %@", [[dateB dateByDayOffset:28] toString:@"yyyy-MM-dd"]);
    NSLog(@"dateB add 4 weeks %@", [[dateB dateByWeekOffset:4] toString:@"yyyy-MM-dd"]);
    NSLog(@"dateC add 4 months %@", [[dateC dateByMonthOffset:4] toString:@"yyyy-MM-dd"]);


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
