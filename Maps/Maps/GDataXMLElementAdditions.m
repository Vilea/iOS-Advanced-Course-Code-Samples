//  Copyright 2010 Vilea GmbH. All rights reserved.
//

#import "GDataXMLElementAdditions.h"


@implementation GDataXMLElement (Additions)
- (GDataXMLElement*)firstElementForName:(NSString*)name{
	return [[self elementsForName:name] objectAtIndex:0];
}

@end
