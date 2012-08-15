//
//  GradientBackgroundView.h
//  CustomUI
//
//  Created by Guajana Ivan on 02.08.11.
//  Copyright 2011 Vilea GmbH. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface GradientBackgroundView : UIView{
    CAGradientLayer *gradient;
}

- (void)setColors:(NSArray*)newColors;
@end