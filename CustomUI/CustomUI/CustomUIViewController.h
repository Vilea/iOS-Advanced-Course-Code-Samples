//
//  CustomUIViewController.h
//  CustomUI
//
//  Created by Guajana Ivan on 02.08.11.
//  Copyright 2011 Vilea GmbH. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GradientBackgroundView.h"

@interface CustomUIViewController : UIViewController {
    GradientBackgroundView *customView;
}

@property (nonatomic, strong) IBOutlet GradientBackgroundView *customView;
- (IBAction)showTable:(id)sender;
- (IBAction)showAlert:(id)sender;

@end
