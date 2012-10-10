//
//  TKContact.h
//  TKContactsMultiPicker
//
//  Created by Jongtae Ahn on 12. 8. 31..
//  Copyright (c) 2012년 TABKO Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TKContact : NSObject {
    NSInteger sectionNumber;
    NSInteger recordID;
    BOOL rowSelected;
    NSString *name;
    NSString *email;
    NSString *tel;
    UIImage *thumbnail;
    
    // Add Steph-Fongo (Thanks!)
    // View: https://github.com/Steph-Fongo/TKContactsMultiPicker/commit/f138f7a56445b69b0fe085176580c6d53b916227
    NSString *lastName;
    NSString *firstName;
}

@property NSInteger sectionNumber;
@property NSInteger recordID;
@property BOOL rowSelected;
@property (nonatomic, retain) NSString *name;
@property (nonatomic, retain) NSString *email;
@property (nonatomic, retain) NSString *tel;
@property (nonatomic, retain) UIImage *thumbnail;
@property (nonatomic, retain) NSString *lastName;
@property (nonatomic, retain) NSString *firstName;

- (NSString*)sorterFirstName;
- (NSString*)sorterLastName;

@end