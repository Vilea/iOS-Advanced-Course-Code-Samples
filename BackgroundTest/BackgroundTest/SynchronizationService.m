//  Copyright 2011 Vilea GmbH. All rights reserved.
//

#import "SynchronizationService.h"

static SynchronizationService *sharedInstance = nil;

@interface SynchronizationService (PrivateMethods)
- (void)_scheduleAlarmForDate:(NSDate*)theDate;
@end

@implementation SynchronizationService
@synthesize running;
@synthesize locationManager;

+ (SynchronizationService*)sharedInstance{
    if (!sharedInstance){
        sharedInstance = [[SynchronizationService alloc] init];
    }
    return sharedInstance;
}

#pragma mark -

- (id)init
{
    self = [super init];
    if (self) {
        running = NO;
    }
    
    return self;
}

- (void)dealloc{
    self.locationManager = nil;
    [super dealloc];
}

#pragma mark -
#pragma mark Background Stuff
- (void)startService{
    if (!self.isRunning){
        
        [[UIApplication sharedApplication] setKeepAliveTimeout:600
                                                       handler:^{
#ifdef DEBUG
                                                           NSLog(@"[%@] Keeping alive...", NSStringFromClass([self class]));
#endif
#ifdef DEBUG
                                                         // This won't return anything, as no network connections are allowed
                                                           NSLog(@"[%@] %@", NSStringFromClass([self class]), [NSString stringWithContentsOfURL:[NSURL URLWithString:@"http://www.google.com"]
                                                                                                                                       encoding:NSUTF8StringEncoding
                                                                                                                                          error:nil]);
#endif
                                                         
                                    
                                                       }];
        
      /*  self.locationManager = [[[CLLocationManager alloc] init] autorelease];
        [locationManager setDelegate:self];
        
        //Only applies when in foreground otherwise it is very significant changes
        [locationManager setDesiredAccuracy:kCLLocationAccuracyBest];
        
        [locationManager startUpdatingLocation];
        */
        UIApplication*    app = [UIApplication sharedApplication];
        
        bgTask = [app beginBackgroundTaskWithExpirationHandler:^{
            [app endBackgroundTask:bgTask];
            bgTask = UIBackgroundTaskInvalid;
        }];
        
        // Start the long-running task and return immediately.
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
            
            // Do the work associated with the task.
            BOOL done = NO;
            while (1){
#ifdef DEBUG
                NSLog(@"[%@] doing work. Time left: %f", NSStringFromClass([self class]), [[UIApplication sharedApplication] backgroundTimeRemaining]);
#endif      
                if (!done){
#ifdef DEBUG
                    NSLog(@"[%@] scheduling notification", NSStringFromClass([self class]));
#endif
                    [self _scheduleAlarmForDate:[NSDate dateWithTimeIntervalSinceNow:10]];
                    done = YES;
                }
               
                sleep(1);
            }
            
            [app endBackgroundTask:bgTask];
            bgTask = UIBackgroundTaskInvalid;
        });
         
    }
    running = YES;
}

- (void)stopService{
    [locationManager stopUpdatingLocation];
    [[UIApplication sharedApplication] clearKeepAliveTimeout];
    running = NO;
}


#pragma mark -
#pragma mark Location
- (void)locationManager:(CLLocationManager *)manager didUpdateToLocation:(CLLocation *)newLocation fromLocation:(CLLocation *)oldLocation {
    
    CLLocationCoordinate2D currentCoordinates = newLocation.coordinate;
    NSLog(@"Entered new Location with the coordinates Latitude: %f Longitude: %f", currentCoordinates.latitude, currentCoordinates.longitude);
    
}

- (void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error {
    NSLog(@"Unable to start location manager. Error:%@", [error description]);
    
}

#pragma mark -
#pragma mark Local Notification
- (void)_scheduleAlarmForDate:(NSDate*)theDate
{
    UIApplication* app = [UIApplication sharedApplication];
    NSArray*    oldNotifications = [app scheduledLocalNotifications];
    
    // Clear out the old notification before scheduling a new one.
    if ([oldNotifications count] > 0)
        [app cancelAllLocalNotifications];
    
    // Create a new notification.
    UILocalNotification* alarm = [[[UILocalNotification alloc] init] autorelease];
    if (alarm)
    {
        alarm.fireDate = theDate;
        alarm.timeZone = [NSTimeZone defaultTimeZone];
        alarm.repeatInterval = 0;
        alarm.soundName = @"alarmsound.caf";
        alarm.alertBody = @"Time to wake up!";
        
        [app scheduleLocalNotification:alarm];
    }
}

@end
