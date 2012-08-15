//
//  MapsViewController.h
//  Maps
//
//  Created by Guajana Ivan on 02.08.11.
//  Copyright 2011 Vilea GmbH. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>
#import "GeoRSSParser.h"

@interface MapsViewController : UIViewController <MKMapViewDelegate, CLLocationManagerDelegate, GeoRSSParserDelegate>{
    MKMapView *mapView;
    CLLocationManager *locationManager;
    IBOutlet UILabel *lonFld;
    IBOutlet UILabel *latFld;
}
@property (nonatomic, strong) CLLocationManager *locationManager;
@property (nonatomic, strong) IBOutlet MKMapView *mapView;

- (IBAction)toggleLocateMe:(id)sender;

@end
