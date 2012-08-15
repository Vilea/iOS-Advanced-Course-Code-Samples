//
//  MultithreadingAppDelegate.h
//  Multithreading
//
//  Created by Guajana Ivan on 02.08.11.
//  Copyright 2011 Vilea GmbH. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MultithreadingViewController;

@interface MultithreadingAppDelegate : NSObject <UIApplicationDelegate>

@property (nonatomic, strong) IBOutlet UIWindow *window;

@property (nonatomic, strong) IBOutlet MultithreadingViewController *viewController;

@end
