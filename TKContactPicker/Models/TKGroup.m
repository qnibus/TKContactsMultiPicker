//
//  MainViewController.h
//  TKContactsMultiPicker
//
//  Created by Jongtae Ahn on 12. 8. 31..
//  Copyright (c) 2012년 TABKO Inc. All rights reserved.
//

#import "TKGroup.h"

@implementation TKGroup
@synthesize name, recordID, membersCount;

- (void)dealloc
{
    if (record) CFRelease(record);
    [name release];
    [super dealloc];
}

@end
