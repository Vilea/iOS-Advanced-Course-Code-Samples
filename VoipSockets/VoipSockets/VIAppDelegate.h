//
//  VIAppDelegate.h
//  VoipSockets
//
//  Created by Ivan Guajana on 15.08.12.
//  Copyright (c) 2012 Vilea GmbH. All rights reserved.
//

#import <UIKit/UIKit.h>

@class VIViewController;

@interface VIAppDelegate : UIResponder <UIApplicationDelegate, NSStreamDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) VIViewController *viewController;

@property (strong) NSInputStream *inputStream;
@property (strong) NSOutputStream *outputStream;

@end
