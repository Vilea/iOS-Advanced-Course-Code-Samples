//  Copyright 2011 Vilea GmbH. All rights reserved.
//

#import "BackgroundTestAppDelegate.h"

#import "RootViewController.h"
#import "SynchronizationService.h"

@implementation BackgroundTestAppDelegate

@synthesize window = _window;
@synthesize splitViewController = _splitViewController;
@synthesize rootViewController = _rootViewController;
@synthesize detailViewController = _detailViewController;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    // Add the split view controller's view to the window and display.
    self.window.rootViewController = self.splitViewController;
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
#ifdef DEBUG
    NSLog(@"[%@] Will resign active", NSStringFromClass([self class]));
#endif
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
#ifdef DEBUG
    NSLog(@"[%@] Did enter background", NSStringFromClass([self class]));
#endif
    [[SynchronizationService sharedInstance] startService];
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
#ifdef DEBUG
    NSLog(@"[%@] Did enter foreground", NSStringFromClass([self class]));
#endif
    /*
     Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
     */
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
#ifdef DEBUG
    NSLog(@"[%@] Did become active", NSStringFromClass([self class]));
#endif
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}

- (void)applicationWillTerminate:(UIApplication *)application
{
#ifdef DEBUG
    NSLog(@"[%@] Will terminate", NSStringFromClass([self class]));
#endif
    /*
     Called when the application is about to terminate.
     Save data if appropriate.
     See also applicationDidEnterBackground:.
     */
}

- (void)dealloc
{
    [_window release];
    [_splitViewController release];
    [_rootViewController release];
    [_detailViewController release];
    [super dealloc];
}

@end
