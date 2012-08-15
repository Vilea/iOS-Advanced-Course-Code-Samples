//
//  LocationMarker.m
//  Maps
//
//  Created by Guajana Ivan on 02.08.11.
//  Copyright 2011 Vilea GmbH. All rights reserved.
//

#import "LocationMarker.h"

@implementation LocationMarker 
@synthesize name = _name;
@synthesize note = _note;
@synthesize coordinate = _coordinate;

- (id)initWithName:(NSString*)name note:(NSString*)note coordinate:(CLLocationCoordinate2D)coordinate {
    if ((self = [super init])) {
        _name = [name copy];
        _note = [note copy];
        _coordinate = coordinate;
    }
    return self;
}

- (NSString *)title {
    return _name;
}

- (NSString *)subtitle {
    return _note;
}


@end