//
//  UIColor+Addition.m
//  Tools
//
//  Created by 戴庆 on 16/12/11.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "UIColor+Addition.h"

@implementation UIColor (Addition)

+ (instancetype)get_colorWithHex:(uint32_t)hex {
    
    uint8_t r = (hex & 0xff0000) >> 16;
    uint8_t g = (hex & 0x00ff00) >> 8;
    uint8_t b = (hex & 0x0000ff);
    
    return [self get_colorWithRed:r green:g blue:b alpha:1.0];
}

+ (instancetype)get_randomColor {
    
    return [self get_colorWithRed:arc4random_uniform(256) green:arc4random_uniform(256) blue:arc4random_uniform(256) alpha:1.0];
}

+ (instancetype)get_colorWithRed:(uint8_t)red green:(uint8_t)green blue:(uint8_t)blue alpha:(CGFloat)alpha {
    
    return [UIColor colorWithRed:red / 255.0 green:green / 255.0 blue:blue / 255.0 alpha:alpha];
}

@end
