//
//  TKNoContactViewController.h
//  Qnote
//
//  Created by Jongtae Ahn on 12. 9. 20..
//  Copyright (c) 2012년 Tabko Inc. All rights reserved.
//

@class TKNoContactViewController;
@protocol TKNoContactViewControllerDelegate <NSObject>
@required

- (void)tkNoContactViewControllerDidCancel:(TKNoContactViewController*)controller;

@end

@interface TKNoContactViewController : UIViewController

@property (nonatomic, assign) id<TKNoContactViewControllerDelegate> delegate;

@end
