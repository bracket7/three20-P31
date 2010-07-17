//
//  TTURLRequestCategory.m
//  P31-Additions
//
//  Created by Mike on 6/3/10.
//  Copyright 2010 Prime31 Studios. All rights reserved.
//

#import "TTURLRequestCategory.h"


@implementation TTURLRequest(Category)

///////////////////////////////////////////////////////////////////////////////////////////////////
- (BOOL)send
{
	// Allow gzip responses
	[self setValue:@"gzip" forHTTPHeaderField:@"Accept-Encoding"];
	
	return [[TTURLRequestQueue mainQueue] sendRequest:self];
}


- (BOOL)sendSynchronously
{
	// Allow gzip responses
	[self setValue:@"gzip" forHTTPHeaderField:@"Accept-Encoding"];
	
	return [[TTURLRequestQueue mainQueue] sendSynchronousRequest:self];
}

@end
