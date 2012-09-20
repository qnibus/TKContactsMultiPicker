//
//  TKGroupPickerController.h
//  Thumb+
//
//  Created by Jongtae Ahn on 12. 9. 1..
//  Copyright (c) 2012년 TABKO Inc. All rights reserved.
//

@class TKGroupPickerController;
@protocol TKGroupPickerControllerDelegate <NSObject>
@required
- (void)tkGroupPickerControllerDidCancel:(TKGroupPickerController*)picker;
@end

@interface TKGroupPickerController : UIViewController <UIAlertViewDelegate, UIActionSheetDelegate> {
    id _delegate;
}

@property (nonatomic, assign) id<TKGroupPickerControllerDelegate> delegate;
@property (nonatomic, retain) IBOutlet UITableView *tableView;
@property (nonatomic, retain) NSMutableArray *groups;

- (void)reloadGroups;

@end
