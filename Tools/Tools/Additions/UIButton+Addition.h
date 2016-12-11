//
//  UIButton+Addition.h
//  Tools
//
//  Created by 戴庆 on 16/12/11.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (Addition)


/**
 创建文本按钮

 @param title 文本
 @param fontSize 字体大小
 @param normalColor 默认颜色
 @param selectedColor 选中颜色
 @return UIButton
 */
+ (instancetype)get_textButton:(NSString *)title
                      fontSize:(CGFloat)fontSize
                   normalColor:(UIColor *)normalColor
                 selectedColor:(UIColor *)selectedColor;

@end
