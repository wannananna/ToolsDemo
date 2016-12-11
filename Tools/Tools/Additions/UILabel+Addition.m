//
//  UILabel+Addition.m
//  Tools
//
//  Created by 戴庆 on 16/12/11.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "UILabel+Addition.h"

@implementation UILabel (Addition)

+ (instancetype)get_labelWithText:(NSString *)text fontSize:(CGFloat)fontSize color:(UIColor *)color {
    
    UILabel *label = [self new];
    
    label.text = text;
    label.font = [UIFont systemFontOfSize:fontSize];
    label.textColor = color;
    
    return label;
}

@end
