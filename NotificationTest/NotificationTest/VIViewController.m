//
//  VIViewController.m
//  NotificationTest
//
//  Created by Ivan Guajana on 14.08.12.
//  Copyright (c) 2012 Vilea GmbH. All rights reserved.
//

#import "VIViewController.h"

@interface VIViewController ()
- (void)_scheduleNotificationForDate:(NSDate*)date;
@end

@implementation VIViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
  return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

#pragma mark -
#pragma mark Actions
- (IBAction)scheduleNotification:(id)sender
{
  // schedule a notification in 10s
  [self _scheduleNotificationForDate:[NSDate dateWithTimeIntervalSinceNow:10]];
}

#pragma mark -
#pragma mark Private Methods

- (void)_scheduleNotificationForDate:(NSDate*)date
{
#ifdef DEBUG
  NSLog(@"[%@] Scheduling notification for %@", NSStringFromClass([self class]), date);
#endif
  UIApplication *app = [UIApplication sharedApplication];
  [app cancelAllLocalNotifications];
  
  UILocalNotification* notification = [[UILocalNotification alloc] init];
  notification.fireDate = date;
  notification.timeZone = [NSTimeZone defaultTimeZone];
  notification.repeatInterval = 0;
  notification.alertBody = @"Hi, there!";

  [app scheduleLocalNotification:notification];
}
@end
