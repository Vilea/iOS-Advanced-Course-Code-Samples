//
//  GradientBackgroundView.m
//  CustomUI
//
//  Created by Guajana Ivan on 02.08.11.
//  Copyright 2011 Vilea GmbH. All rights reserved.
//

#import "GradientBackgroundView.h"
#import <QuartzCore/QuartzCore.h>

@implementation GradientBackgroundView

- (void)awakeFromNib{
    // Make sure the view (ourself) is not white
    self.backgroundColor = [UIColor clearColor];
    
    gradient = [CAGradientLayer layer];
    gradient.frame = self.bounds;
    gradient.colors = [NSArray arrayWithObjects:(id)[[UIColor whiteColor] CGColor], (id)[[UIColor greenColor] CGColor], nil];
   
    // Set up rounded corners (bleah...)
    gradient.cornerRadius = 30;
    gradient.borderColor = [UIColor redColor].CGColor;
    gradient.borderWidth = 5;
    //
    
    [self.layer insertSublayer:gradient atIndex:0];
}



#pragma mark -
#pragma mark Customizing...
- (void)setColors:(NSArray*)newColors{
    gradient.colors = newColors;
}



@end
