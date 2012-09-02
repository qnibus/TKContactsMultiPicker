//
//  MainViewController.h
//  TKContactsMultiPicker
//
//  Created by Jongtae Ahn on 12. 8. 31..
//  Copyright (c) 2012년 TABKO Inc. All rights reserved.
//

#import "TKContactsMultiPickerController.h"

@interface MainViewController : UIViewController <TKContactsMultiPickerControllerDelegate>

@property (nonatomic, retain) IBOutlet UIScrollView *scrollView;

- (IBAction)showPeoplePicker:(id)sender;

@end
