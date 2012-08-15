//
//  DetailViewController.h
//  CoreData
//
//  Created by Guajana Ivan on 02.08.11.
//  Copyright 2011 Vilea GmbH. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController{
    
    NSManagedObject *animal;
    IBOutlet UITextField *nameFld;
    IBOutlet UITextField *legsFld;
}
- (IBAction)save:(id)sender;
@property (nonatomic, strong) NSManagedObject *animal;
@end

