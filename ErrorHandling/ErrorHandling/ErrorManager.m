//
//  ErrorManager.m
//  ErrorHandling
//
//  Created by Ivan Guajana on 16.08.12.
//  Copyright (c) 2012 Vilea GmbH. All rights reserved.
//

#import "ErrorManager.h"

static ErrorManager *sharedInstance = nil;

@implementation ErrorManager

+ (ErrorManager*)sharedInstance
{
  static dispatch_once_t onceToken;
  dispatch_once(&onceToken, ^{
    sharedInstance = [[ErrorManager alloc] init];
  });
  
  return sharedInstance;
}

#pragma mark -
- (void)reportError:(NSError*)error
{
#ifdef DEBUG
  NSLog(@"[%@] Error: %@", NSStringFromClass([self class]), error);
#endif
}

@end
