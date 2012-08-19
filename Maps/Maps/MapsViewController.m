//
//  MapsViewController.m
//  Maps
//
//  Created by Guajana Ivan on 02.08.11.
//  Copyright 2011 Vilea GmbH. All rights reserved.
//

#import "MapsViewController.h"
#import "LocationMarker.h"
#import "GeoRSSParser.h"

@interface MapsViewController (PrivateMethods)
- (void)_drawAnnotations;
- (void)_initialZoom;
@end

@implementation MapsViewController
@synthesize mapView, locationManager;

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
    
    mapView.delegate = self;
    
    [self _initialZoom];
    [self _drawAnnotations];
    
}


- (void)viewDidUnload
{
    [self setMapView:nil];
    latFld = nil;
    lonFld = nil;
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


#pragma mark -
#pragma mark Actions
- (IBAction)toggleLocateMe:(id)sender{
	if (!self.locationManager){
		self.locationManager = [[CLLocationManager alloc] init];
        self.locationManager.delegate = self;
		[self.locationManager startUpdatingLocation];
		[(UIButton*)sender setImage:[UIImage imageNamed:@"74-location-enabled"] forState:UIControlStateNormal];
	}
	else {
		[self.locationManager stopUpdatingLocation];
		self.locationManager = nil;
		[(UIButton*)sender setImage:[UIImage imageNamed:@"74-location"] forState:UIControlStateNormal];
	}
}

#pragma mark -
#pragma mark CoreLocation Delegate
- (void)locationManager:(CLLocationManager *)manager
    didUpdateToLocation:(CLLocation *)newLocation
           fromLocation:(CLLocation *)oldLocation{
#ifdef DEBUG
	NSLog(@"[MainViewController] Received location %@ (old: %@)", newLocation, oldLocation);
#endif
	if (newLocation != oldLocation){
		latFld.text = [NSString stringWithFormat:@"%f", newLocation.coordinate.latitude];
		lonFld.text = [NSString stringWithFormat:@"%f", newLocation.coordinate.longitude];
	}
}

- (void)locationManager:(CLLocationManager *)manager
       didFailWithError:(NSError *)error{
#ifdef DEBUG
	NSLog(@"[MainViewController] Location failed with error: %@", error);
#endif
	
}

#pragma mark
#pragma mark MapView Delegate
- (MKAnnotationView *)mapView:(MKMapView *)mv viewForAnnotation:(id <MKAnnotation>)annotation {
    
    static NSString *identifier = @"LocationMarkerIdentifier";   
    if ([annotation isKindOfClass:[LocationMarker class]]) {        
        MKPinAnnotationView *annotationView = (MKPinAnnotationView *) [mapView dequeueReusableAnnotationViewWithIdentifier:identifier];
        if (annotationView == nil) {
            annotationView = [[MKPinAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:identifier];
        } else {
            annotationView.annotation = annotation;
        }
        
        annotationView.enabled = YES;
        annotationView.canShowCallout = YES;
        
        annotationView.pinColor = MKPinAnnotationColorPurple;
        
        return annotationView;
    }
    
    return nil;    
}

#pragma mark -
#pragma mark GeoRSSParserDelegate
- (void)parserDidFinishParsing:(GeoRSSParser*)parser{
    NSLog(@"Parser did finish");
    
    NSArray *annotations = [parser itemLocations];
    [mapView removeAnnotations:[mapView annotations]];
    [mapView addAnnotations:annotations];
    
}


#pragma mark -
#pragma mark Private Methods
// Add new method above refreshTapped
- (void)_drawAnnotations {
    
    //Remove all existing annotations
    for (id<MKAnnotation> annotation in mapView.annotations) {
        [mapView removeAnnotation:annotation];
    }

    /*
    NSArray *annotations = [NSArray arrayWithObjects:
                            [NSDictionary dictionaryWithObjectsAndKeys:[NSNumber numberWithDouble:9.022501], @"lon", [NSNumber numberWithDouble:46.1932], @"lat", @"Castel Grande", @"name", @"Il maggiore dei 3 castelli", @"note", nil],
                            [NSDictionary dictionaryWithObjectsAndKeys:[NSNumber numberWithDouble:9.030333], @"lon", [NSNumber numberWithDouble:46.189992], @"lat", @"Castello di Sasso Corbaro", @"name", @"...", @"note", nil], 
           [NSDictionary dictionaryWithObjectsAndKeys:[NSNumber numberWithDouble:9.026642], @"lon", [NSNumber numberWithDouble:46.192309], @"lat", @"Castello di Montebello", @"name", @"Sottotitolo...", @"note", nil]                          
                            ,nil];
     */
    /* for (NSDictionary * dict in annotations) {
     CLLocationCoordinate2D coordinate;
     coordinate.latitude = [[dict objectForKey:@"lat"] doubleValue];
     coordinate.longitude = [[dict objectForKey:@"lon"] doubleValue];            
     LocationMarker *annotation = [[[LocationMarker alloc] initWithName:[dict objectForKey:@"name"] 
     note:[dict objectForKey:@"note"]
     coordinate:coordinate] autorelease];
     [mapView addAnnotation:annotation];        
     }]*/
    
    GeoRSSParser *parser = [[GeoRSSParser alloc] initWithURLString:@"http://www4.ti.ch/fileadmin/DT/temi/webcams/geo/webcams.xml"];
    parser.delegate = self;
    
    [parser loadInBackground];
}

- (void)_initialZoom {
    // Zoom in to an initial location
    CLLocationCoordinate2D zoomLocation;
    zoomLocation.latitude = 46.1932;
    zoomLocation.longitude = 9.082501;
    
    // View a region of 10km x 10km around the zoomLocation coordinates
    MKCoordinateRegion viewRegion = MKCoordinateRegionMakeWithDistance(zoomLocation, 10000, 10000);
    
    MKCoordinateRegion adjustedRegion = [mapView regionThatFits:viewRegion];                
    
    [mapView setRegion:adjustedRegion animated:YES];
    
}

@end
