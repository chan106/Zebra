//
//  JCMainTabBar.m
//  Teacher
//
//  Created by Guo.JC on 16/9/13.
//  Copyright © 2016年 Guo.JC. All rights reserved.
//

#import "JCMainTabBar.h"
#import "JCMainNavigation.h"
#import "JCSportViewController.h"
#import "JCTrackViewController.h"
#import "JCDiscoverViewController.h"
#import "JCPersonalViewController.h"


@interface JCMainTabBar ()

@end

@implementation JCMainTabBar

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupTabBar];
//    self.tabBar.tintColor = kMainColor;
}

-(void)setupTabBar
{ 
//运动
    [self setupVCTabbar:[JCSportViewController new] 	andImage:@""
												  andSelectImage:@""
													    andTitle:@"运动"];
//轨迹														
    [self setupVCTabbar:[JCTrackViewController new] andImage:@""
								  andSelectImage:@""
										andTitle:@"轨迹"];
//发现										
    [self setupVCTabbar:[JCDiscoverViewController new] andImage:@""
										andSelectImage:@""
											  andTitle:@"发现"];
//个人中心										  
	[self setupVCTabbar:[JCPersonalViewController new] andImage:@""
										andSelectImage:@""
											  andTitle:@"个人中心"];
}

-(void)setupVCTabbar:(UIViewController*)view andImage:(NSString*)image andSelectImage:(NSString *)selectImage andTitle:(NSString*)title
{
    view.title = title;
    view.tabBarItem.title = title;
    view.tabBarItem.image = [UIImage imageNamed:image];
    view.tabBarItem.selectedImage = [UIImage imageNamed:selectImage];
    [self addChildViewController:[[JCMainNavigation alloc] initWithRootViewController:view]];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
}
#pragma mark 横竖屏相关
//询问是否支持旋转
- (BOOL)shouldAutorotate
{
    //    获取导航控制器 是否支持
    return self.selectedViewController.shouldAutorotate;
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations
{
    return self.selectedViewController.supportedInterfaceOrientations;
}

@end
