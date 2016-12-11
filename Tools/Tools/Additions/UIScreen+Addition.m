//
//  UIScreen+Addition.m
//  Tools
//
//  Created by 戴庆 on 16/12/11.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "UIScreen+Addition.h"

@implementation UIScreen (Addition)

+ (CGFloat)get_screenWidth {
    return [UIScreen mainScreen].bounds.size.width;
}

+ (CGFloat)get_screenHeight {
    return [UIScreen mainScreen].bounds.size.height;
}

+ (CGFloat)get_scale {
    return [UIScreen mainScreen].scale;
}
@end
