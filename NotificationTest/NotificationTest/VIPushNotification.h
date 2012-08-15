//  Copyright 2010 Vilea GmbH. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol VIPushNotificationDelegate
@optional
- (void)didRegisterForPushNotifications;
- (void)failedToRegisterForPushNotifications:(NSError*)error;
@end

@interface VIPushNotification : NSObject {
	id<VIPushNotificationDelegate> __unsafe_unretained delegate;
	BOOL enableDebugOutput;
	BOOL shouldSendDebugInformation;
}
@property (nonatomic, unsafe_unretained) id<VIPushNotificationDelegate> delegate;
@property (nonatomic, assign) BOOL enableDebugOutput;
@property (nonatomic, assign) BOOL shouldSendDebugInformation;

+ (VIPushNotification*)sharedInstance;

- (void)registerWithToken:(NSData*)token;
@end
