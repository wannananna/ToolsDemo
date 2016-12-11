//
//  NSArray+Addition.m
//  Tools
//
//  Created by 戴庆 on 16/12/11.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "NSArray+Addition.h"
#import "NSObject+Addition.h"

@implementation NSArray (Addition)

+ (NSArray *)get_objectListWithPlistName:(NSString *)plistName className:(NSString *)className {
    
    NSURL *url = [[NSBundle mainBundle] URLForResource:plistName withExtension:nil];
    
    NSArray *list = [NSArray arrayWithContentsOfURL:url];
    
    Class cls = NSClassFromString(className);
    
    NSAssert(cls, @"加载 plist 文件时指定的 className - %@ 错误",className);
    
    NSMutableArray *arrayM = [NSMutableArray array];
    
    for (NSDictionary *dict in list) {
        
        [arrayM addObject:[cls get_objectWithDict:dict]];
    }
    
    return arrayM.copy;
}

@end
