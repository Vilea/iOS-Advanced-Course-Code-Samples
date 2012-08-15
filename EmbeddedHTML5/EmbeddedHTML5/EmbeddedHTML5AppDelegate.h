//
//  EmbeddedHTML5AppDelegate.h
//  EmbeddedHTML5
//
//  Created by Guajana Ivan on 02.08.11.
//  Copyright 2011 Vilea GmbH. All rights reserved.
//

#import <UIKit/UIKit.h>

@class UIWebViewController;

@interface EmbeddedHTML5AppDelegate : NSObject <UIApplicationDelegate>

@property (nonatomic, strong) IBOutlet UIWindow *window;

@property (nonatomic, strong) IBOutlet UIWebViewController *mainViewController;

@end
