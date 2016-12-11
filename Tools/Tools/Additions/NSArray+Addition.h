//
//  NSArray+Addition.h
//  Tools
//
//  Created by 戴庆 on 16/12/11.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (Addition)


/**
 从 plist 文件创建指定 className 对象数组

 @param plistName plist 文件名
 @param className 要创建模型的类名
 @return className 的对象数组
 */
+ (NSArray *)get_objectListWithPlistName:(NSString *)plistName className:(NSString *)className;

@end
