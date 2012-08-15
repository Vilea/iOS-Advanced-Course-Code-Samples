//
//  TableViewCell.m
//  CustomUI
//
//  Created by Guajana Ivan on 02.08.11.
//  Copyright 2011 Vilea GmbH. All rights reserved.
//

#import "TableViewCell.h"
#import <QuartzCore/QuartzCore.h>

@implementation TableViewCell
@synthesize titleLabel;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
    }
    return self;
}

- (void)awakeFromNib{
    [super awakeFromNib];
    
    CALayer *layer = [gradientBackgroundView layer];
    layer.cornerRadius = 10.0;
    layer.borderWidth= 1.0;
    layer.borderColor = [UIColor darkGrayColor].CGColor;
    layer.masksToBounds = YES;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    //[super setSelected:selected animated:animated];
    CALayer *layer = [gradientBackgroundView layer];

    if (selected){
        layer.borderWidth = 3;
        layer.borderColor = [UIColor redColor].CGColor;
        
    }
    else
    {
        layer.borderWidth= 1.0;
        layer.borderColor = [UIColor darkGrayColor].CGColor;    }
}


- (NSString *) reuseIdentifier {
	return @"appTableViewCell";
}

- (void)layoutSubviews{
    [super layoutSubviews];
    gradientBackgroundView.frame = CGRectInset(self.bounds, 3, 3);
}
@end
