//
//  UILabel+Addition.h
//  Tools
//
//  Created by 戴庆 on 16/12/11.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (Addition)


/**
 创建文本标签

 @param text 文本
 @param fontSize 字体大小
 @param color 颜色
 @return 文本标签
 */
+ (instancetype)get_labelWithText:(NSString *)text
                         fontSize:(CGFloat)fontSize
                            color:(UIColor *)color;

@end
