//
//  LocationMarker.h
//  Maps
//
//  Created by Guajana Ivan on 02.08.11.
//  Copyright 2011 Vilea GmbH. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface LocationMarker : NSObject <MKAnnotation>{
    NSString *_name;
    NSString *_note;
    CLLocationCoordinate2D _coordinate;
}

@property (readonly) NSString *name;
@property (readonly) NSString *note;
@property (nonatomic, readonly) CLLocationCoordinate2D coordinate;

- (id)initWithName:(NSString*)name note:(NSString*)note coordinate:(CLLocationCoordinate2D)coordinate;

@end