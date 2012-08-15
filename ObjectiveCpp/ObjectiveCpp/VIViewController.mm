//
//  VIViewController.m
//  ObjectiveCpp
//
//  Created by Ivan Guajana on 15.08.12.
//  Copyright (c) 2012 Vilea GmbH. All rights reserved.
//

#import "VIViewController.hh"

#import "Person.h"

#include <iostream>

@interface VIViewController ()

@end

@implementation VIViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

  
  Person *p = new Person("Ivan");
  std::cout << "Person: " << p->name;

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
