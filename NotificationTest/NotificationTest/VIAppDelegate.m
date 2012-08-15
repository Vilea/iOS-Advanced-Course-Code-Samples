//
//  VIAppDelegate.m
//  NotificationTest
//
//  Created by Ivan Guajana on 14.08.12.
//  Copyright (c) 2012 Vilea GmbH. All rights reserved.
//

#import "VIAppDelegate.h"
#import "VIViewController.h"

@implementation VIAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
  self.viewController = [[VIViewController alloc] initWithNibName:@"VIViewController" bundle:nil];
  self.window.rootViewController = self.viewController;
    [self.window makeKeyAndVisible];
  
  [VIPushNotification sharedInstance].delegate = self;
#ifdef DEBUG
	[VIPushNotification sharedInstance].enableDebugOutput = YES;
	//[VIPushNotification sharedInstance].shouldSendDebugInformation = YES;
#endif
  
	//Register this application for notifications
	[[UIApplication sharedApplication] registerForRemoteNotificationTypes:(UIRemoteNotificationTypeBadge |
                                                                         UIRemoteNotificationTypeSound |
                                                                         UIRemoteNotificationTypeAlert)];

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

- (void)application:(UIApplication *)application didReceiveLocalNotification:(UILocalNotification *)notification
{
#ifdef DEBUG
  NSLog(@"[%@] Received local notification: %@", NSStringFromClass([self class]), notification);
#endif
}

#pragma mark -
#pragma mark Push Notification delegate
- (void)application:(UIApplication *)application didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)_deviceToken {
  
	//check remote notification enabled or not
	if ([application enabledRemoteNotificationTypes] == 0) {
#ifdef DEBUG
    NSLog(@"[%@] Notifications are disabled for this application", NSStringFromClass([self class]));
#endif
		return;
	}
  
	[[VIPushNotification sharedInstance] registerWithToken:_deviceToken];
}

- (void)application:(UIApplication *)application didFailToRegisterForRemoteNotificationsWithError:(NSError *) error {
#ifdef DEBUG
  NSLog(@"[%@] Error registering for APN: %@", NSStringFromClass([self class]), error);
#endif
}

- (void)application:(UIApplication *)application didReceiveRemoteNotification:(NSDictionary *)userInfo
{
#ifdef DEBUG
  NSLog(@"[%@] Remote notification received: %@", NSStringFromClass([self class]), [userInfo description]);
#endif
	id alertObject = [[userInfo objectForKey:@"aps"] objectForKey:@"alert"];
	NSString *body = @"";
	if ([alertObject isKindOfClass:[NSDictionary class]]){
		body = [(NSDictionary*)alertObject objectForKey:@"body"];
	}
	else {
		body = (NSString*)alertObject;
	}

#ifdef DEBUG
  NSLog(@"[%@] Notification body: %@", NSStringFromClass([self class]), body);
#endif
}

#pragma mark -
#pragma mark VIPushNotificationDelegate
- (void)didRegisterForPushNotifications{
#ifdef DEBUG
  NSLog(@"[%@] Successfully registered for APNs", NSStringFromClass([self class]));
#endif
}

- (void)failedToRegisterForPushNotifications:(NSError*)error{
#ifdef DEBUG
  NSLog(@"[%@] Failed to register for APNs", NSStringFromClass([self class]));
#endif
}

@end
