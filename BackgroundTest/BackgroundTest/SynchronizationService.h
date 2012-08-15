//  Copyright 2011 Vilea GmbH. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

@interface SynchronizationService : NSObject<CLLocationManagerDelegate>
{
    BOOL running;
    UIBackgroundTaskIdentifier bgTask;

    CLLocationManager *locationManager;
}
@property (readonly, getter = isRunning) BOOL running;
@property(nonatomic, retain) CLLocationManager *locationManager;

+ (SynchronizationService*)sharedInstance;

- (void)startService;
- (void)stopService;
@end
