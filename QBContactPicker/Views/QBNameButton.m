//
//  QBNameButton.m
//  QBContactPicker
//
//  Created by Jongtae Ahn on 12. 5. 23..
//  Copyright 2011년 TABKO. All rights reserved.
//

#import "QBNameButton.h"

@implementation QBNameButton

- (void)dealloc {
    [super dealloc];
}

- (id)initWithFrame:(CGRect)frame 
{
    if (self = [super initWithFrame:frame]) {
        [self setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [self setTitleShadowColor:[UIColor darkGrayColor] forState:UIControlStateNormal];
        [self.titleLabel setFont:[UIFont systemFontOfSize:7.5]];
        [self.titleLabel setShadowOffset:CGSizeMake(0, -1)];
        [self.titleLabel setBackgroundColor:[UIColor colorWithWhite:0.0f alpha:0.75f]];
    }

    return self;
}

- (void)setTitle:(NSString *)title forState:(UIControlState)state
{
    if ([title length] > 0) {
        [self setTitleEdgeInsets:UIEdgeInsetsMake(52, 0, 0, 0)];
        [self.titleLabel setContentStretch:self.bounds];
        
        if ([title length] > 16) {
            [self.titleLabel setNumberOfLines:2];
        } else {
            [self.titleLabel setNumberOfLines:1];
        }
    }
    [super setTitle:title forState:state];
}

@end
