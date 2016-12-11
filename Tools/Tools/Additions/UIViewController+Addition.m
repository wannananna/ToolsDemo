//
//  UIViewController+Addition.m
//  Tools
//
//  Created by 戴庆 on 16/12/11.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "UIViewController+Addition.h"

@implementation UIViewController (Addition)

- (void)get_addChildController:(UIViewController *)childController intoView:(UIView *)view {
    
    [self addChildViewController:childController];
    
    [view addSubview:childController.view];
    
    [childController didMoveToParentViewController:self];
}
@end
