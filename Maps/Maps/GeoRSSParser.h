//
//  GeoRSSParser.h
//  Maps
//
//  Created by Guajana Ivan on 04.08.11.
//  Copyright 2011 Vilea GmbH. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GeoRSSParser : NSObject{
    NSOperationQueue *queue;
    NSString *_feedURLString;
    NSArray *_itemLocations;
    
    id __unsafe_unretained delegate;
}
@property (unsafe_unretained) id delegate;

- (id)initWithURLString:(NSString*)newFeedURLString;

- (NSArray*)itemLocations;
- (void)loadInBackground;

@end


@protocol GeoRSSParserDelegate <NSObject>
- (void)parserDidFinishParsing:(GeoRSSParser*)parser;
@end
