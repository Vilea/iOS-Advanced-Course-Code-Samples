//
//  MultithreadingViewController.m
//  Multithreading
//
//  Created by Guajana Ivan on 02.08.11.
//  Copyright 2011 Vilea GmbH. All rights reserved.
//

#import "MultithreadingViewController.h"
#import "CountOperation.h"

@implementation MultithreadingViewController

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    if (!queue){
        queue = [[NSOperationQueue alloc] init];
        queue.maxConcurrentOperationCount = 2;
    }
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


#pragma mark -
#pragma mark Actions
- (void)count{
    @autoreleasepool {
        int i;
        NSString *str = @"Count";
        
        for (i = 0; i < 5; i++){
            sleep(1);
            NSLog(@"[%@ Thread: %@] %d", str, [NSThread currentThread], i);
             
        }
    }
}

- (IBAction)countSync:(id)sender {
    int i;
    for (i = 0; i < 5; i++){
        sleep(1);
        NSLog(@"[SYNC] %d", i);
    }
}

- (IBAction)countInBackground:(id)sender {
    int version = 1;
    
    if (version == 0){
        [self performSelectorInBackground:@selector(count) withObject:nil];
    }
    else if (version == 1){
        NSInvocationOperation *operation = [[NSInvocationOperation alloc] initWithTarget:self
                                                                                selector:@selector(count)
                                                                                  object:nil];
        operation.completionBlock   = ^{
            NSLog(@"finished");
        };
        
        [queue addOperation:operation];
    }
    else if (version == 2){
        CountOperation *operation = [[CountOperation alloc] init];
        [queue addOperation:operation];
    }
    else if (version == 3){
       [queue addOperationWithBlock:^{
            int i;
            for (i = 0; i < 5; i++){
                sleep(1);
                NSLog(@"[BlockOperation] %d", i);
            } 
        }];
        

    }
  else if (version == 4)
  {
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
      int i;
      for (i = 0; i < 5; i++){
        sleep(1);
        NSLog(@"[Block] %d", i);
        
        dispatch_sync(dispatch_get_main_queue(), ^{
          //DO SOMETHING WITH THE UI 
        });
        
      }
    });

  }
}

- (IBAction)showAlert:(id)sender {
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Alert"
                                                         message:@"Message"
                                                        delegate:nil
                                               cancelButtonTitle:@"OK"
                                               otherButtonTitles:nil];
    [alertView show];
}
@end
