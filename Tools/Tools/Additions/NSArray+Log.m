//
//  NSArray+Log.m
//  Tools
//
//  Created by 戴庆 on 16/12/11.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "NSArray+Log.h"

@implementation NSArray (Log)

- (NSString *)descriptionWithLocale:(id)locale {
    
    NSMutableString *strM = [NSMutableString stringWithString:@"(\n"];
    
    [self enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [strM appendFormat:@"\t%@,\n",obj];
    }];
    
    [strM appendString:@")"];
    
    return strM;
}

@end

@implementation NSDictionary (Log)

- (NSString *)descriptionWithLocale:(id)locale {
    
    NSMutableString *strM = [NSMutableString stringWithString:@"{\n"];
    
    [self enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
        [strM appendFormat:@"\t%@ = %@;\n",key,obj];
    }];
    
    [strM appendString:@"}\n"];
    
    return strM;
}

@end
