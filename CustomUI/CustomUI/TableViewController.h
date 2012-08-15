//
//  TableViewController.h
//  CustomUI
//
//  Created by Guajana Ivan on 02.08.11.
//  Copyright 2011 Vilea GmbH. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewController : UITableViewController{
    UIViewController *__unsafe_unretained owner;
    UITableViewCell *__unsafe_unretained tmpCell;

}
@property (unsafe_unretained) UIViewController *owner;
@property (nonatomic, unsafe_unretained) IBOutlet UITableViewCell *tmpCell;

- (IBAction)goBack:(id)sender;
@end
