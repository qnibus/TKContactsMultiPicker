//
//  MainViewController.h
//  QBContactPicker
//
//  Created by Jongtae Ahn on 12. 8. 31..
//  Copyright (c) 2012년 TABKO Inc. All rights reserved.
//

#import "QBContactsMultiPickerController.h"

@interface MainViewController : UIViewController <QBContactsMultiPickerControllerDelegate>

@property (nonatomic, retain) IBOutlet UIScrollView *scrollView;

- (IBAction)showPeoplePicker:(id)sender;

@end
