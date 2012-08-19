//
//  VIViewController.m
//  ErrorHandling
//
//  Created by Ivan Guajana on 15.08.12.
//  Copyright (c) 2012 Vilea GmbH. All rights reserved.
//

#import "VIViewController.h"

@interface VIViewController ()
- (float)_divideTwelveBy:(int)den error:(NSError**)error;
- (void)_performSomeTaskWithArg:(int)den errorHandler:(void (^)(NSError*))handleError;
@end

@implementation VIViewController

- (void)viewDidLoad
{
  [super viewDidLoad];
	
  NSError *error = nil;
  float res = [self _divideTwelveBy:34 error:&error];
  
  if (!error)
  {
    NSLog(@"[%@] Succes: %.2f", NSStringFromClass([self class]), res);
  }
  else
  {
    [[ErrorManager sharedInstance] reportError:error];
  }
  
  [self _performSomeTaskWithArg:0 errorHandler:^(NSError *error){
    [[ErrorManager sharedInstance] reportError:error];
  }];
}

- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}


#pragma mark -
#pragma mark Private Methods
- (float)_divideTwelveBy:(int)den error:(NSError **)error
{
  if (den == 0)
  {
    NSDictionary *userInfo = [NSDictionary dictionaryWithObjectsAndKeys:@"Trying to divide by 0", NSLocalizedDescriptionKey, nil];
    *error = [[NSError alloc] initWithDomain:@"MyAppDomain" code:1 userInfo:userInfo];
    return 0;
  }
  
  return 12./den;
}

- (void)_performSomeTaskWithArg:(int)den errorHandler:(void (^)(NSError*))handleError
{
  if (den == 0)
  {
    NSDictionary *userInfo = [NSDictionary dictionaryWithObjectsAndKeys:@"Trying to performing some task on 0", NSLocalizedDescriptionKey, nil];
    NSError *error = [[NSError alloc] initWithDomain:@"MyAppDomain" code:1 userInfo:userInfo];
    
    // execute the error handler
    handleError(error);
  }
  
  // perform the task
}


@end
