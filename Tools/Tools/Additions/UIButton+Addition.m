//
//  UIButton+Addition.m
//  Tools
//
//  Created by 戴庆 on 16/12/11.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "UIButton+Addition.h"

@implementation UIButton (Addition)

+ (instancetype)get_textButton:(NSString *)title fontSize:(CGFloat)fontSize normalColor:(UIColor *)normalColor selectedColor:(UIColor *)selectedColor {
    
    UIButton *button = [self new];
    
    [button setTitle:title forState:UIControlStateNormal];
    
    [button setTitleColor:normalColor forState:UIControlStateNormal];
    [button setTitleColor:selectedColor forState:UIControlStateSelected];
    
    button.titleLabel.font = [UIFont systemFontOfSize:fontSize];
    
    [button sizeToFit];
    
    return button;
}
@end
