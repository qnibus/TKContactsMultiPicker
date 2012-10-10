//
//  TKPeoplePickerController.h
//  Qnote
//
//  Created by Jongtae Ahn on 12. 9. 3..
//  Copyright (c) 2012년 Tabko Inc. All rights reserved.
//

#import "TKGroupPickerController.h" // Future update
#import "TKContactsMultiPickerController.h"
#import "TKNoContactViewController.h"

@class TKPeoplePickerController;
@protocol TKPeoplePickerControllerDelegate <NSObject>
@required
- (void)tkPeoplePickerController:(TKPeoplePickerController*)picker didFinishPickingDataWithInfo:(NSArray*)contacts;
- (void)tkPeoplePickerControllerDidCancel:(TKPeoplePickerController*)picker;
@end

@interface TKPeoplePickerController : UINavigationController <TKGroupPickerControllerDelegate, TKContactsMultiPickerControllerDelegate, TKNoContactViewControllerDelegate>

@property (nonatomic, assign) ABAddressBookRef addressBook;
@property (nonatomic, assign) id<TKPeoplePickerControllerDelegate> actionDelegate;
@property (nonatomic, retain) TKGroupPickerController *groupController;
@property (nonatomic, retain) TKContactsMultiPickerController *contactController;

- (id)initPeoplePicker;

@end
