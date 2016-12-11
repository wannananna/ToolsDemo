//
//  NSAttributedString+Addition.h
//  Tools
//
//  Created by 戴庆 on 16/12/11.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSAttributedString (Addition)


/**
 使用图像和文本生成上下排列的属性文本

 @param image 图像
 @param imageWH 图像宽高
 @param title 标题文字
 @param fontSIze 标题文字大小
 @param titleColor 标题颜色
 @param spacing 图像和标题间距
 @return 属性文本
 */
+ (instancetype)get_imageTextWithImage:(UIImage *)image
                               imageWH:(CGFloat)imageWH
                                 title:(NSString *)title
                              fontSize:(CGFloat)fontSIze
                            titleColor:(UIColor *)titleColor
                               spacing:(CGFloat)spacing;

@end
