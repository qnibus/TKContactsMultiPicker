//
//  UIImage+QBUtilities.h
//  QBContactPicker
//
//  Created by Jongtae Ahn on 12. 8. 31..
//  Copyright (c) 2012년 TABKO Inc. All rights reserved.
//

#import <ImageIO/ImageIO.h>

@interface UIImage (QBUtilities)
- (UIImage*)thumbnailImage:(CGSize)targetSize;
@end