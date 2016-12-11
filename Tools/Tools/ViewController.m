//
//  ViewController.m
//  Tools
//
//  Created by 戴庆 on 16/12/11.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    UIViewController *homeVC = [self controllerWith:@"HomeTableViewController" andTitle:@"首页" andImgName:nil];
    
    self.viewControllers = @[homeVC];
}

- (UIViewController *)controllerWith:(NSString *)className andTitle:(NSString *)titleName andImgName:(NSString *)imageName {
    
    Class cls = NSClassFromString(className);
    
    UIViewController *vc = [cls new];
    
    return [self rootControllerWith:vc andTitle:titleName andImgName:imageName];
}

- (UIViewController *)rootControllerWith:(UIViewController *)vc andTitle:(NSString *)titleName andImgName:(NSString *)imageName {
    
    vc.tabBarItem.image = [UIImage imageNamed:imageName];
    
    vc.tabBarItem.selectedImage = [[UIImage imageNamed:[NSString stringWithFormat:@"%@_selected",imageName]]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    [vc.tabBarItem setTitleTextAttributes:@{
                                            NSForegroundColorAttributeName: [UIColor orangeColor],
                                            NSFontAttributeName: [UIFont systemFontOfSize:14]
                                            } forState:UIControlStateSelected];
    
    UINavigationController *navi = [[UINavigationController alloc]initWithRootViewController:vc];
    
    vc.title = titleName;
    
    return navi;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
