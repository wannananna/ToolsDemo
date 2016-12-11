//
//  UIView+Addition.m
//  Tools
//
//  Created by 戴庆 on 16/12/11.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "UIView+Addition.h"

@implementation UIView (Addition)

- (UIImage *)get_snapsShotImage {
    
    UIGraphicsBeginImageContextWithOptions(self.bounds.size, YES, 0);
    
    [self drawViewHierarchyInRect:self.bounds afterScreenUpdates:YES];
    
    UIImage *result = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndPDFContext();
    
    return result;
}
@end
