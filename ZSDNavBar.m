//
//  ZSDNavBar.m
//  Test
//
//  Created by 林坤柱 on 14-8-18.
//  Copyright (c) 2014年 林坤柱. All rights reserved.
//

#import "ZSDNavBar.h"


@implementation ZSDNavBar



- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

//设置NavigationBar背景图片
- (void)setBackgroundImage:(NSString *)imgName
{
    [self setBackgroundImage:[UIImage imageNamed:imgName] forBarMetrics:UIBarMetricsDefault];
}
//设置只有图片的左Item
- (void)setLeftItemImage:(NSString*)imgName frame:(CGRect)rect action:(SEL)action
{
    UIBarButtonItem *item = [self setItemImage:imgName frame:rect action:action];
    UIViewController *vc = [self getTopViewController];
    
    vc.navigationItem.leftBarButtonItem = item;
}
//设置只有图片的右Item
- (void)setRightItemImage:(NSString*)imgName frame:(CGRect)rect action:(SEL)action
{
    UIBarButtonItem *item = [self setItemImage:imgName frame:rect action:action];
    UIViewController *vc = [self getTopViewController];

    vc.navigationItem.rightBarButtonItem = item;
}
//设置带图片和标题的左Item
- (void)setLeftItemTitle:(NSString*)title backgroundImage:(NSString*)imgName action:(SEL)action
{
    UIViewController *vc = [self getTopViewController];
    UIBarButtonItem *item = [self setItemBackgroundImage:imgName title:title action:action];
    vc.navigationItem.leftBarButtonItem = item;
}
//设置带图片和标题的右Item
- (void)setRightItemTitle:(NSString*)title backgroundImage:(NSString*)imgName action:(SEL)action
{
    UIViewController *vc = [self getTopViewController];
    UIBarButtonItem *item = [self setItemBackgroundImage:imgName title:title action:action];
    vc.navigationItem.rightBarButtonItem = item;
}

//设置带图片和标题的返回Item
- (void)setBackItemBackgroundImage:(NSString*)imageName title:(NSString*)title
{
    UIBarButtonItem *backItem = [[UIBarButtonItem alloc] init];
    backItem.title = title;
    [backItem setBackButtonBackgroundImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
    UINavigationController *navController = [self getNavigationController];
    navController.topViewController.navigationItem.backBarButtonItem = backItem;
    
}
//（内部方法）设置任意只有图片的Item
- (UIBarButtonItem*)setItemImage:(NSString*)imgName frame:(CGRect)rect action:(SEL)action
{
    UIImage *img = [UIImage imageNamed:imgName];
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = rect;
    [btn setImage:img forState:UIControlStateNormal];
    [btn addTarget:[self getTopViewController] action:action forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithCustomView:btn];
   
    return item;
}
//（内部方法）设置任意带图片和标题的Item
//title参数如果没有，则要传入@""而不是Nil，否则不起作用，但是传入@""会有小问题，图像变形，位置不对。
- (UIBarButtonItem*)setItemBackgroundImage:(NSString*)imgName title:(NSString*)title action:(SEL)action
{
    UIBarButtonItem *item = [[UIBarButtonItem alloc] init];
    item.title = title;//没有这句话就不起作用
    [item setBackgroundImage:[UIImage imageNamed:imgName] forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
    [item setAction:action];
    UIViewController *vc = [self getTopViewController];
    [item setTarget:vc];
    return item;
}
//（内部方法）获取到当前的ViewController
- (UIViewController*)getTopViewController
{
    UINavigationController *navController = self.delegate;
    UIViewController *vc = navController.topViewController;
    return vc;
}
//（内部方法）获取NavigationController
- (UINavigationController*)getNavigationController
{
    UINavigationController *navController = self.delegate;
    return navController;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
