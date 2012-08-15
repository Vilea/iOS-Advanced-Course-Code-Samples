//
//  MultithreadingViewController.h
//  Multithreading
//
//  Created by Guajana Ivan on 02.08.11.
//  Copyright 2011 Vilea GmbH. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MultithreadingViewController : UIViewController{
    NSOperationQueue *queue;
}

- (IBAction)countSync:(id)sender;
- (IBAction)countInBackground:(id)sender;
- (IBAction)showAlert:(id)sender;

@end
