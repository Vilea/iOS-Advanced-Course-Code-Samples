//
//  DetailViewController.m
//  CoreData
//
//  Created by Guajana Ivan on 02.08.11.
//  Copyright 2011 Vilea GmbH. All rights reserved.
//

#import "DetailViewController.h"
#import "CoreDataAppDelegate.h"

@implementation DetailViewController
@synthesize animal;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}


- (void)setAnimal:(NSManagedObject *)newAnimal{
    if (newAnimal != animal){
        nameFld.text = [newAnimal valueForKey:@"name"];
        legsFld.text = [[newAnimal valueForKey:@"legs"] stringValue];
        animal = newAnimal;
    }
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    nameFld = nil;
    legsFld = nil;
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)save:(id)sender {
    [animal setValue:[nameFld text]
              forKey:@"name"];
    
    [animal setValue:[NSNumber numberWithInt:[[legsFld text] intValue]]
              forKey:@"legs"];
    
    NSError *error = nil;
    NSManagedObjectContext *context = ((CoreDataAppDelegate*)[[UIApplication sharedApplication] delegate]).managedObjectContext; 
    
    if ([context save:&error]){
        [self.navigationController popViewControllerAnimated:YES];
    }
}
@end
