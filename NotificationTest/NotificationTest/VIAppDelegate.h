//
//  VIAppDelegate.h
//  NotificationTest
//
//  Created by Ivan Guajana on 14.08.12.
//  Copyright (c) 2012 Vilea GmbH. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "VIPushNotification.h"

@class VIViewController;

@interface VIAppDelegate : UIResponder <UIApplicationDelegate, VIPushNotificationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) VIViewController *viewController;

@end
