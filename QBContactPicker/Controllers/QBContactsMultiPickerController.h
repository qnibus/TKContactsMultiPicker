//
//  QBPeoplePickerController.h
//  QBContactPicker
//
//  Created by Jongtae Ahn on 12. 8. 31..
//  Copyright (c) 2012년 TABKO Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AddressBook/AddressBook.h>
#import <AddressBookUI/AddressBookUI.h>
#import <malloc/malloc.h>
#import "QBAddressBook.h"

@class QBAddressBook, QBContactsMultiPickerController;
@protocol QBContactsMultiPickerControllerDelegate <NSObject>
@required

- (void)contactsMultiPickerController:(QBContactsMultiPickerController*)picker didFinishPickingDataWithInfo:(NSArray*)data;
- (void)contactsMultiPickerControllerDidCancel:(QBContactsMultiPickerController*)picker;

@end


@interface QBContactsMultiPickerController : UIViewController <UITableViewDataSource, UITableViewDelegate, UISearchDisplayDelegate, UISearchBarDelegate>
{
	id _delegate;
    
@private
    NSUInteger _selectedCount;
    NSMutableArray *_addressBooks;
	NSMutableArray *_filteredListContent;
}

@property (nonatomic, retain) id<QBContactsMultiPickerControllerDelegate> delegate;
@property (nonatomic, retain) IBOutlet UITableView *tableView;
@property (nonatomic, retain) IBOutlet UISearchBar *searchBar;
@property (nonatomic, retain) IBOutlet UINavigationBar *navigationBar;
@property (nonatomic, retain) IBOutlet UINavigationItem *navigationItem;

@property (nonatomic, copy) NSString *savedSearchTerm;
@property (nonatomic) NSInteger savedScopeButtonIndex;
@property (nonatomic) BOOL searchWasActive;
@property (nonatomic) BOOL showModal;


@end
