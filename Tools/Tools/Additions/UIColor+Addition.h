//
//  UIColor+Addition.h
//  Tools
//
//  Created by 戴庆 on 16/12/11.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (Addition)


/**
 16进制表示颜色

 @param hex 16进制无符号32位证书
 @return 颜色
 */
+ (instancetype)get_colorWithHex:(uint32_t)hex;


/**
 随机颜色

 @return 随机颜色
 */
+ (instancetype)get_randomColor;


/**
 R/G/B 表示颜色

 @param red 红色数值
 @param green 绿色数值
 @param blue 蓝色数值
 @param alpha 透明度
 @return 颜色
 */
+ (instancetype)get_colorWithRed:(uint8_t)red green:(uint8_t)green blue:(uint8_t)blue alpha:(CGFloat)alpha;


@end
