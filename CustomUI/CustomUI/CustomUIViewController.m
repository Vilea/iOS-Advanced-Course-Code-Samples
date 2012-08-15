//
//  CustomUIViewController.m
//  CustomUI
//
//  Created by Guajana Ivan on 02.08.11.
//  Copyright 2011 Vilea GmbH. All rights reserved.
//

#import "CustomUIViewController.h"
#import "TableViewController.h"

@implementation CustomUIViewController
@synthesize customView;

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
    [customView setColors:[NSArray arrayWithObjects:(id)[[UIColor yellowColor] CGColor], (id)[[UIColor blueColor] CGColor], nil]];
}


- (void)viewDidUnload
{
    [self setCustomView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)showTable:(id)sender {
    TableViewController *viewController = [[TableViewController alloc] initWithNibName:@"TableViewController"
                                                                                 bundle:nil];
    
    viewController.owner = self;
    [self presentModalViewController:viewController
                            animated:YES];
}

- (IBAction)showAlert:(id)sender {
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Alert"
                                                        message:@"Hello..."
                                                       delegate:nil
                                              cancelButtonTitle:@"OK"
                                               otherButtonTitles:nil];
    [alertView show];
}

@end
