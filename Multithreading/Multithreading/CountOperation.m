//
//  CountOperation.m
//  Multithreading
//
//  Created by Guajana Ivan on 02.08.11.
//  Copyright 2011 Vilea GmbH. All rights reserved.
//

#import "CountOperation.h"

@implementation CountOperation


- (void)main
{
  int i;
  for (i = 0; i < 5; i++){
    sleep(1);
    
    if ([self isCancelled])
    {
      NSLog(@"[Opertaion %@] I was killed :(", self);
      return;
    }
    
    NSLog(@"[Operation %@] %d", self, i);
  }
}

@end
