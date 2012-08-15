//
//  VIAppDelegate.m
//  VoipSockets
//
//  Created by Ivan Guajana on 15.08.12.
//  Copyright (c) 2012 Vilea GmbH. All rights reserved.
//

#import "VIAppDelegate.h"

#import "VIViewController.h"

@interface VIAppDelegate (PrivateMethods)
- (void)_setupSockets;
@end

@implementation VIAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
  self.viewController = [[VIViewController alloc] initWithNibName:@"VIViewController" bundle:nil];
  self.window.rootViewController = self.viewController;
    [self.window makeKeyAndVisible];
  
  [self _setupSockets];
  
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
  [[UIApplication sharedApplication] setKeepAliveTimeout:600
                                                 handler:^{
                                                   NSLog(@"[%@] Keeping alive socket connection...", NSStringFromClass([self class]));

                                                   // Make sure the server connection is still available, otherwise re-open it
                                                   [self _setupSockets];
                                                 }];

}

#pragma mark -
#pragma mark Private Methods
- (void)_setupSockets
{
#ifdef DEBUG
  NSLog(@"[%@] Setting up socket", NSStringFromClass([self class]));
#endif
  
  [self.inputStream close];
  self.inputStream.delegate = nil;
  [self.outputStream close];
  self.outputStream.delegate = nil;
  
  CFReadStreamRef readStream;
  CFWriteStreamRef writeStream;
  CFStreamCreatePairWithSocketToHost(NULL, (__bridge CFStringRef)@"192.168.1.10", 1999, &readStream, &writeStream);
  
  self.inputStream = (__bridge NSInputStream *)readStream;
  self.outputStream = (__bridge NSOutputStream *)writeStream;
  
  int res = [self.inputStream setProperty:NSStreamNetworkServiceTypeVoIP forKey:NSStreamNetworkServiceTypeVoIP];
  
  if (res < 0)
  {
    NSLog(@"[%@] Could not set VOIP service type on stream %@", NSStringFromClass([self class]), self.inputStream);
  }
  
  res = [self.outputStream setProperty:NSStreamNetworkServiceTypeVoIP forKey:NSStreamNetworkServiceTypeVoIP];

  if (res < 0)
  {
    NSLog(@"[%@] Could not set VOIP service type on stream %@", NSStringFromClass([self class]), self.inputStream);
  }
  
  [self.inputStream setDelegate:self];
  [self.outputStream setDelegate:self];
  [self.inputStream scheduleInRunLoop:[NSRunLoop currentRunLoop] forMode:NSDefaultRunLoopMode];
  [self.outputStream scheduleInRunLoop:[NSRunLoop currentRunLoop] forMode:NSDefaultRunLoopMode];
  [self.inputStream open];
  [self.outputStream open];
}

#pragma mark -
#pragma mark NSInputStream Delegate
- (void)stream:(NSInputStream *)stream handleEvent:(NSStreamEvent)event {
  BOOL shouldClose = NO;
  switch(event) {
    case NSStreamEventNone:
      NSLog(@"[%@] NSStreamEventNone %@", NSStringFromClass([self class]), stream);
      break;
    case NSStreamEventOpenCompleted:
      NSLog(@"[%@] NSStreamEventOpenCompleted %@", NSStringFromClass([self class]), stream);
      break;
    case NSStreamEventHasSpaceAvailable:
      break;
    case NSStreamEventEndEncountered:
      NSLog(@"[%@] NSStreamEventEndEncountered %@", NSStringFromClass([self class]), stream);
      shouldClose = YES;
      // If all data hasn't been read, fall through to the "has bytes" event
      if(![stream hasBytesAvailable]) break;
    case NSStreamEventHasBytesAvailable: ; // We need a semicolon here before we can declare local variables
      NSLog(@"[%@] NSStreamEventHasBytesAvailable %@", NSStringFromClass([self class]), stream);

      uint8_t *buffer;
      NSUInteger length;
      BOOL freeBuffer = NO;
      // The stream has data. Try to get its internal buffer instead of creating one
      if(![stream getBuffer:&buffer length:&length]) {
        // The stream couldn't provide its internal buffer. We have to make one ourselves
        buffer = malloc(1024 * sizeof(uint8_t));
        freeBuffer = YES;
        NSInteger result = [stream read:buffer maxLength:1024];
        if(result < 0) {
          // error copying to buffer
          break;
        }
        length = result;
      }
      // length bytes of data in buffer
      if(freeBuffer) free(buffer);
      break;
    case NSStreamEventErrorOccurred:
      NSLog(@"[%@] NSStreamEventErrorOccurred %@", NSStringFromClass([self class]), stream);
      shouldClose = YES;
      break;
  }
  if(shouldClose) [stream close];
}
@end
