//
//  VIViewController.h
//  SOAPService
//
//  Created by Ivan Guajana on 14.08.12.
//  Copyright (c) 2012 Vilea GmbH. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface VIViewController : UIViewController
- (IBAction)updateRate:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *rateFld;
@property (weak, nonatomic) IBOutlet UILabel *lastUpdateFld;

@end
