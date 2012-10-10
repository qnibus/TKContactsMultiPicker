//
//  TKGroupPickerController.m
//  Thumb+
//
//  Created by Jongtae Ahn on 12. 9. 1..
//  Copyright (c) 2012년 TABKO Inc. All rights reserved.
//

#import "TKPeoplePickerController.h"
#import "TKGroupPickerController.h"
#import "TKContactsMultiPickerController.h"
#import "TKGroup.h"

@interface TKGroupPickerController ()

@end

@implementation TKGroupPickerController
@synthesize groups = _groups;

- (void)reloadGroups
{
    NSMutableArray *groupsTemp = [NSMutableArray array];
    ABAddressBookRef addressBookRef = [(TKPeoplePickerController*)self.navigationController addressBook];
    CFArrayRef allGroups = ABAddressBookCopyArrayOfAllGroups(addressBookRef);
    CFIndex groupsCount = ABAddressBookGetGroupCount(addressBookRef);
	for (NSInteger i = 0; i < groupsCount; i++)
    {
        TKGroup *group = [[TKGroup alloc] init];
        ABRecordRef groupRecord = CFArrayGetValueAtIndex(allGroups, i);
        CFStringRef groupName = ABRecordCopyCompositeName(groupRecord);
        CFArrayRef currentGroupCount = ABGroupCopyArrayOfAllMembers(groupRecord);
        group.name = (NSString*)groupName;
        group.recordID = (int)ABRecordGetRecordID(groupRecord);
        group.membersCount = (int)[(NSArray*)currentGroupCount count];
        
		[groupsTemp addObject:group];
        [group release];

        CFRelease(groupName);
        CFRelease(groupName);
    }
    if (allGroups) CFRelease(allGroups);
        
    // Sorting by name
    NSMutableArray *sortGroups = [NSMutableArray arrayWithArray:groupsTemp];
    NSSortDescriptor *sortDescriptor;
    sortDescriptor = [[[NSSortDescriptor alloc] initWithKey:@"name" ascending:YES] autorelease];
    NSMutableArray *sortDescriptors = [NSMutableArray arrayWithObject:sortDescriptor];
    self.groups = [NSMutableArray arrayWithArray:[sortGroups sortedArrayUsingDescriptors:sortDescriptors]];
}

#pragma mark -
#pragma mark Initialization

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Groups", nil);
    }
    return self;
}

#pragma mark -
#pragma mark View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.navigationItem setLeftBarButtonItem:[[[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(addGroup:)] autorelease]];
    [self.navigationItem setRightBarButtonItem:[[[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCancel target:self action:@selector(dismissAction:)] autorelease]];
    [self.tableView setSeparatorStyle:UITableViewCellSeparatorStyleSingleLine];
    
    [self reloadGroups];
    [self.tableView reloadData];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.tableView deselectRowAtIndexPath:[self.tableView indexPathForSelectedRow] animated:YES];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark -
#pragma mark UITableViewDelegate & UITableViewDataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
	return 1 + ([_groups count] > 0 ? 1 : 0);
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSInteger rowNumber;
    switch (section) {
        case 0: {
            rowNumber = 1;
        } break;
        default: {
            rowNumber = [_groups count];
        } break;
    }
    return rowNumber;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:nil] autorelease];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    cell.selectionStyle = UITableViewCellSelectionStyleBlue;
    cell.textLabel.adjustsFontSizeToFitWidth = YES;
    
    switch (indexPath.section) {
        case 0: {
            cell.textLabel.text = NSLocalizedString(@"All Contacts", nil);
            cell.detailTextLabel.text = [NSString stringWithFormat:@"%i", (int)ABAddressBookGetPersonCount([(TKPeoplePickerController*)self.navigationController addressBook])];
        } break;
        default: {
            TKGroup *group = [self.groups objectAtIndex:indexPath.row];
            cell.textLabel.text = group.name;
            cell.detailTextLabel.text = [NSString stringWithFormat:@"%i", group.membersCount];
        } break;
    }
	
	return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    TKPeoplePickerController *peoplePicker = (TKPeoplePickerController*)self.navigationController;    
    TKContactsMultiPickerController *controller;
    switch (indexPath.section) {
        case 0: {
            controller = [[TKContactsMultiPickerController alloc] initWithGroup:nil];
        } break;
        default: {
            TKGroup *group = [self.groups objectAtIndex:indexPath.row];
            controller = [[TKContactsMultiPickerController alloc] initWithGroup:group];
        } break;
    }
    [controller setDelegate:peoplePicker];
    [self.navigationController pushViewController:controller animated:YES];
    [controller release];
}

#pragma mark -
#pragma mark Barbutton action

- (IBAction)addGroup:(id)sender
{
    // The future will be added
}

- (IBAction)dismissAction:(id)sender
{
    if ([self.delegate respondsToSelector:@selector(tkGroupPickerControllerDidCancel:)])
        [self.delegate tkGroupPickerControllerDidCancel:self];
    else
        [self dismissViewControllerAnimated:YES completion:nil];
}

#pragma mark -
#pragma mark Memory management

- (void)viewDidUnload
{
    [super viewDidUnload];
    self.tableView = nil;
}

- (void)dealloc
{
    [_groups release];
    [_tableView release];
	[super dealloc];
}

@end
