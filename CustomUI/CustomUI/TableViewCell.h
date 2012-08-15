//
//  TableViewCell.h
//  CustomUI
//
//  Created by Guajana Ivan on 02.08.11.
//  Copyright 2011 Vilea GmbH. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GradientBackgroundView.h"

@interface TableViewCell : UITableViewCell{
    IBOutlet GradientBackgroundView *gradientBackgroundView;
    IBOutlet UILabel *__unsafe_unretained titleLabel;
}
@property (unsafe_unretained) UILabel *titleLabel;
@end

