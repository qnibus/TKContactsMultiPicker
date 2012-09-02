//
//  MainViewController.h
//  TKContactsMultiPicker
//
//  Created by Jongtae Ahn on 12. 8. 31..
//  Copyright (c) 2012년 TABKO Inc. All rights reserved.
//

#import "TKAddressBook.h"

@implementation TKAddressBook
@synthesize name, email, tel, thumbnail, recordID, sectionNumber, rowSelected;

- (void)dealloc
{
    [name release];
    [email release];
    [tel release];
    [thumbnail release];
    
    [super dealloc];
}

@end
