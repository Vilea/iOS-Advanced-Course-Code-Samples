//
//  GeoRSSParser.m
//  Maps
//
//  Created by Guajana Ivan on 04.08.11.
//  Copyright 2011 Vilea GmbH. All rights reserved.
//

#import "GeoRSSParser.h"
#import "GDataXMLNode.h"
#import "GDataXMLElementAdditions.h"
#import "LocationMarker.h"

@interface GeoRSSParser (PrivateMethods)
- (void)_loadAndParse;
@end

@implementation GeoRSSParser
@synthesize delegate;

- (id)initWithURLString:(NSString*)newFeedURLString{
    self = [super init];
    if (self) {
        _feedURLString = [newFeedURLString copy];
        queue = [[NSOperationQueue alloc] init];
        queue.maxConcurrentOperationCount = 1;
    }
    
    return self;
}


#pragma mark -
#pragma mark Accessors
- (void)loadInBackground{
    if ([queue operationCount] == 0){
        NSInvocationOperation *op = [[NSInvocationOperation alloc] initWithTarget:self
                                                                          selector:@selector(_loadAndParse) object:nil];
        [queue addOperation:op];
        
        op.completionBlock = ^{
            // Perform on main thread!!!!!
            [(NSObject*)delegate performSelectorOnMainThread:@selector(parserDidFinishParsing:)
                                                  withObject:self
                                               waitUntilDone:NO];
        };
    }
}

- (NSArray*)itemLocations{
    return _itemLocations;
}

#pragma mark -
#pragma mark Private Methods
- (void)_loadAndParse{
    if (!_itemLocations){
        NSMutableArray *result = [NSMutableArray array];
        
        // download and parse
        NSData *feedData = [[NSData alloc] initWithContentsOfURL:[NSURL URLWithString:_feedURLString]];
        

        // DEBUG...
        NSString *str = [[NSString alloc] initWithData:feedData 
                                              encoding:NSUTF8StringEncoding];
        NSLog(@"Result %@", str);
        //
        
        // Parse
        NSError *error = nil;
        GDataXMLDocument *doc = [[GDataXMLDocument alloc] initWithData:feedData
                                                                options:0 
                                                                  error:&error];
        if (!error && doc){
            GDataXMLNode *rootElement = doc.rootElement;
            
            NSArray *items = [rootElement nodesForXPath:@"channel/item" error:&error];
            NSLog(@"Items: %@", items);
            
            for (GDataXMLElement *item in items){
                NSString *title = [[item firstElementForName:@"title"] stringValue];
                NSString *link = [[item firstElementForName:@"link"] stringValue];
                
                NSString *coordinateString = [[item firstElementForName:@"georss:point"] stringValue];
                NSArray *parts = [coordinateString componentsSeparatedByString:@" "];
                
                CLLocationCoordinate2D coordinates;
                coordinates.latitude = [[parts objectAtIndex:0] doubleValue];
                coordinates.longitude = [[parts objectAtIndex:1] doubleValue];
                
                LocationMarker *marker = [[LocationMarker alloc] initWithName:title
                                                                          note:link coordinate:coordinates];
                [result addObject:marker];
            }
            
            _itemLocations = [result copy];
        }
        else{
            NSLog(@"Error parsing...: %@", error);
        }
        
    }

}
@end
