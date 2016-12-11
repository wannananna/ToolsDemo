//
//  NSAttributedString+Addition.m
//  Tools
//
//  Created by 戴庆 on 16/12/11.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "NSAttributedString+Addition.h"

@implementation NSAttributedString (Addition)

+ (instancetype)get_imageTextWithImage:(UIImage *)image imageWH:(CGFloat)imageWH title:(NSString *)title fontSize:(CGFloat)fontSIze titleColor:(UIColor *)titleColor spacing:(CGFloat)spacing {
    
    // 文本字典
    NSDictionary *titleDict = @{NSFontAttributeName: [UIFont systemFontOfSize:fontSIze],
                                NSForegroundColorAttributeName: titleColor};
    
    NSDictionary *spacingDict = @{NSFontAttributeName: [UIFont systemFontOfSize:spacing]};
    
    // 图片文本
    NSTextAttachment *attachment = [NSTextAttachment new];
    attachment.image = image;
    attachment.bounds = CGRectMake(0, 0, imageWH, imageWH);
    NSAttributedString *imageText = [NSAttributedString attributedStringWithAttachment:attachment];
    
    // 换行文本
    NSAttributedString *lineText = [[NSAttributedString alloc]initWithString:@"\n\n" attributes:spacingDict];
    
    // 按钮文字
    NSAttributedString *text = [[NSAttributedString alloc]initWithString:title attributes:titleDict];
    
    // 合并文字
    NSMutableAttributedString *attrM = [[NSMutableAttributedString alloc]initWithAttributedString:imageText];
    [attrM appendAttributedString:lineText];
    [attrM appendAttributedString:text];
    
    return attrM.copy;
}

@end
