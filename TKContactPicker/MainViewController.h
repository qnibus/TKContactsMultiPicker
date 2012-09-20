//
//  MainViewController.h
//  TKContactsMultiPicker
//
//  Created by Jongtae Ahn on 12. 8. 31..
//  Copyright (c) 2012년 TABKO Inc. All rights reserved.
//

#import "TKPeoplePickerController.h"

@interface MainViewController : UIViewController <UINavigationControllerDelegate, TKPeoplePickerControllerDelegate>

@property (nonatomic, retain) IBOutlet UIScrollView *scrollView;

- (IBAction)showPeoplePicker:(id)sender;

@end
