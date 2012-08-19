//
//  VIViewController.h
//  Documentation
//
//  Created by Ivan Guajana on 15.08.12.
//  Copyright (c) 2012 Vilea GmbH. All rights reserved.
//

#import <UIKit/UIKit.h>

/** A view controller used to manage the first view */
@interface VIViewController : UIViewController

/** @name Properties */

/** The name */
@property (nonatomic, strong) NSString *name;

/** The address */
@property (nonatomic, strong) NSString *address;


/** @name Actions */

/** Perform an action
 * @param f The argument
 */
- (void)doSomethingWithFloat:(float)f;

/** @return Whether it is visible or not */
- (BOOL)isVisible;
@end
