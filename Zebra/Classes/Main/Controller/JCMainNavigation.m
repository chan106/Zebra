//
//  JCMainNavigation.m
//  Teacher
//
//  Created by Guo.JC on 16/9/13.
//  Copyright © 2016年 Guo.JC. All rights reserved.
//

#import "JCMainNavigation.h"

@interface JCMainNavigation ()

@end

@implementation JCMainNavigation

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationBar.barTintColor = [UIColor colorWithRed:.5 green:.3 blue:.6 alpha:1];
    //设置title颜色
    self.navigationBar.titleTextAttributes = @{NSForegroundColorAttributeName:[UIColor whiteColor]};//中间title文字颜色
    self.navigationBar.tintColor = [UIColor whiteColor];//导航栏按键颜色
	
}



//设置状态栏（运行商 电量）为白色
- (UIStatusBarStyle)preferredStatusBarStyle{
    return UIStatusBarStyleLightContent;
}

- (BOOL)shouldAutorotate
{
    //询问最终显示的页面是否支持
    return [self.viewControllers.lastObject shouldAutorotate];
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations
{
    return [self.viewControllers.lastObject supportedInterfaceOrientations];
}

@end
