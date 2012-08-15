//  Copyright 2010 Vilea GmbH. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GDataXMLNode.h"

@interface GDataXMLElement (Additions)
- (GDataXMLElement*)firstElementForName:(NSString*)name;

@end
