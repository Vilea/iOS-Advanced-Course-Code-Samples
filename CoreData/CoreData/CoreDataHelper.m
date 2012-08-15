//
//  Created by Björn Sållarp on 2009-06-14.
//  NO Copyright 2009 MightyLittle Industries. NO rights reserved.
// 
//  Use this code any way you like. If you do like it, please
//  link to my blog and/or write a friendly comment. Thank you!
//
//  Read my blog @ http://blog.sallarp.com
//

#import "CoreDataHelper.h"

@implementation CoreDataHelper


+ (NSMutableArray *)searchObjectsInContext:(NSManagedObjectContext*)managedObjectContext entityName:(NSString*)entityName predicate:(NSPredicate*)predicate sortKey:(NSString*)sortKey sortAscending:(BOOL)sortAscending limit:(NSUInteger)limit
{

	NSFetchRequest *request = [[NSFetchRequest alloc] init];
	//[request setReturnsDistinctResults:YES];
	[request setFetchLimit:limit];
	
	NSEntityDescription *entity = [NSEntityDescription entityForName:entityName inManagedObjectContext:managedObjectContext];
	[request setEntity:entity];	
	
	// If a predicate was passed, pass it to the query
	if(predicate != nil)
	{
		[request setPredicate:predicate];
	}
	
	// If a sort key was passed, use it for sorting.
	if(sortKey != nil)
	{
		NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:sortKey ascending:sortAscending];
		NSArray *sortDescriptors = [[NSArray alloc] initWithObjects:sortDescriptor, nil];
		[request setSortDescriptors:sortDescriptors];
	}
	
	NSError *error;
	NSMutableArray *mutableFetchResults = nil;
	@try {
		mutableFetchResults = [[managedObjectContext executeFetchRequest:request error:&error] mutableCopy];

	}
	@catch (NSException * e) {
#ifdef DEBUG
		NSLog(@"[CoreDataHelper] Exception: %@", e);
#endif

	}
	
	
	return mutableFetchResults;
}

+ (NSMutableArray *)searchObjectsInContext:(NSManagedObjectContext*)managedObjectContext entityName:(NSString*)entityName predicate:(NSPredicate*)predicate sortKey:(NSString*)sortKey sortAscending:(BOOL)sortAscending{
	return [self searchObjectsInContext:managedObjectContext entityName:entityName predicate:predicate sortKey:sortKey sortAscending:sortAscending limit:0];
}

+ (NSMutableArray *)getObjectsFromContext:(NSManagedObjectContext*)managedObjectContext entityName:(NSString*)entityName sortKey:(NSString*)sortKey sortAscending:(BOOL)sortAscending limit:(NSUInteger)limit{
	return [self searchObjectsInContext:managedObjectContext entityName:entityName predicate:nil sortKey:sortKey sortAscending:sortAscending limit:limit];	
}

+ (NSMutableArray *)getObjectsFromContext:(NSManagedObjectContext*)managedObjectContext entityName:(NSString*)entityName sortKey:(NSString*)sortKey sortAscending:(BOOL)sortAscending
{
	return [self searchObjectsInContext:managedObjectContext entityName:entityName predicate:nil sortKey:sortKey sortAscending:sortAscending limit:0];
}


@end
