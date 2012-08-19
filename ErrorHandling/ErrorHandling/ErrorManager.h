//
//  ErrorManager.h
//  ErrorHandling
//
//  Created by Ivan Guajana on 16.08.12.
//  Copyright (c) 2012 Vilea GmbH. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ErrorManager : NSObject
+ (ErrorManager*)sharedInstance;

- (void)reportError:(NSError*)error;
@end
