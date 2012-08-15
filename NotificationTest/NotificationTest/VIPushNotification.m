//  Copyright 2010 Vilea GmbH. All rights reserved.
//

#import "VIPushNotification.h"

static VIPushNotification *sharedInstance = nil;
static const NSString *kServiceURLString = @"http://bradipo.local:3000/devices.json";

@implementation VIPushNotification
@synthesize delegate, enableDebugOutput, shouldSendDebugInformation;

+ (VIPushNotification*)sharedInstance{
	if (!sharedInstance){
		sharedInstance = [[VIPushNotification alloc] init];
	}
	return sharedInstance;
}

#pragma mark -
- (void)registerWithToken:(NSData *)devToken{
	const unsigned *tokenBytes = [devToken bytes];
	NSString *hexToken = [NSString stringWithFormat:@"%08x%08x%08x%08x%08x%08x%08x%08x",
						  ntohl(tokenBytes[0]), ntohl(tokenBytes[1]), ntohl(tokenBytes[2]),
						  ntohl(tokenBytes[3]), ntohl(tokenBytes[4]), ntohl(tokenBytes[5]),
						  ntohl(tokenBytes[6]), ntohl(tokenBytes[7])];
	
	NSMutableURLRequest *request = [[NSMutableURLRequest alloc] init];
	[request setURL:[NSURL URLWithString:(NSString*)kServiceURLString]];
	
	NSString *post = @"";
	if (self.shouldSendDebugInformation){
		post = [NSString stringWithFormat:@"apnregistration[token]=%@&device[name]=%@&device[system_name]=%@&device[system_version]=%@&device[model]=%@&device[localized_model]=%@", 
				hexToken,
				[[UIDevice currentDevice] name],	
				[[UIDevice currentDevice] systemName],
				[[UIDevice currentDevice] systemVersion],
				[[UIDevice currentDevice] model],
				[[UIDevice currentDevice] localizedModel]
				];
	}
	else {
		post = [NSString stringWithFormat:@"apnregistration[token]=%@", hexToken];
	}

	if (self.enableDebugOutput){		
		NSLog(@"[VIPushNotification] POST: %@", post);
	}
	
	NSData *postData = [post dataUsingEncoding:NSUTF8StringEncoding allowLossyConversion:YES];
	NSString *postLength = [NSString stringWithFormat:@"%d", [postData length]];
	
	[request setHTTPMethod:@"POST"];
	[request setValue:postLength forHTTPHeaderField:@"Content-Length"];
	[request setValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-Type"];
	[request setHTTPBody:postData];
	
	NSURLConnection *connection = [[NSURLConnection alloc] initWithRequest:request delegate:self];
	if (!connection) {
		if (self.enableDebugOutput){
			NSLog(@"[VIPushNotification] Could not create a connection object");			
		}
	}	
}
	
#pragma mark -
#pragma mark NSURLConnectionDelegate
- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error{
	if (self.enableDebugOutput){
		NSLog(@"[VIPushNotification] Error registering with the service provider. The error was: '%@'", error);			
	}	 
	if ([(NSObject*)delegate respondsToSelector:@selector(failedToRegisterForPushNotifications:)]){
		[(id<VIPushNotificationDelegate>)delegate failedToRegisterForPushNotifications:error];
	}
}
	
- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSHTTPURLResponse *)response{
	if ([response statusCode] == 200){
		if (self.enableDebugOutput){
			NSLog(@"[VIPushNotification] Successfully registered with the service provider.");		
		}
		if ([(NSObject*)delegate respondsToSelector:@selector(didRegisterForPushNotifications)]){
			[(id<VIPushNotificationDelegate>)delegate didRegisterForPushNotifications];
		}		
	}
	else {
		if (self.enableDebugOutput){
			NSLog(@"[VIPushNotification] Error registering with the service provider. The returned satus was '%d'", [response statusCode]);			
		}	 
		if ([(NSObject*)delegate respondsToSelector:@selector(failedToRegisterForPushNotifications:)]){

			[(id<VIPushNotificationDelegate>)delegate failedToRegisterForPushNotifications:[NSError errorWithDomain:NSURLErrorDomain code:[response statusCode] userInfo:nil]];
		}
	}

}
@end
