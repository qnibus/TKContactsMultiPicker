//
//  MainViewController.h
//  TKContactsMultiPicker
//
//  Created by Jongtae Ahn on 12. 8. 31..
//  Copyright (c) 2012년 TABKO Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AddressBook/AddressBook.h>

@interface TKGroup : NSObject {
    ABRecordRef record;
    NSInteger recordID;
    NSString *name;
    NSInteger membersCount;
}

@property NSInteger membersCount;
@property NSInteger recordID;
@property (nonatomic, retain) NSString *name;

@end