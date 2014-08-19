//
//  ZSDNavBar.h
//  Test
//
//  Created by 林坤柱 on 14-8-18.
//  Copyright (c) 2014年 林坤柱. All rights reserved.
//

/*
 
 应用说明：
 （1）在AppDelegate里面指定NavigationController的根视图控制器（继承自基类控制器）并且把NavigationController的NavigationBar Class换成ZSDNavBar Class
 - (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
 {
 ViewController *vc = [[ViewController alloc] init];
 UINavigationController *nav = [[UINavigationController alloc] initWithNavigationBarClass:[ZSDNavBar class] toolbarClass:nil];
 nav.viewControllers = @[vc];
 self.window.rootViewController = nav;
 return YES;
 }
 
 （2）放在NavigationController里面的controllers都继承自某个基类
 （3）在跟ViewController的viewWillAppear方法里面设置自定义navBar的共有特性
 - (void)viewWillAppear:(BOOL)animated
 {
 ZSDNavBar *navBar = (ZSDNavBar*)self.navigationController.navigationBar;
 [navBar setBackgroundImage:@"nav_bg_ios7.png"];
 //    [navBar setRightItemTitle:@"navBarGo" backgroundImage:@"go_btn@2x.png" action:@selector(rightItemHandler)];
 [navBar setRightItemImage:@"go_btn@2x.png" frame:CGRectMake(0, 0, 60, 40) action:@selector(rightItemHandler)];
 if ([self.navigationController.viewControllers count] >= 1) {
 [navBar setBackItemBackgroundImage:@"back_btn@2x.png" title:@"navBack"];
 //    [navBar setLeftItemImage:@"back_btn@2x.png" frame:CGRectMake(0, 0, 60, 40) action:@selector(leftItemHandler)];
 //    [navBar setLeftItemTitle:@"leftItem" backgroundImage:@"back_btn@2x.png" action:@selector(leftItemHandler)];
 }
 
 [super viewWillAppear:YES];
 }
 （4）继承基类的VC实现navBar上面item涉及到的行为方法
 @interface ZSDBaseVC : UIViewController
 
 - (void)rightItemHandler;
 - (void)leftItemHandler;
 @end
 
 */


#import <UIKit/UIKit.h>
/*
 不在这个类里面加NavigationItem，NavigationController等属性，因为这样更符合MVC设计模式。当NavigationBar要使用NavigationItem相关属性方法时，得通过NavigationController这个代理来获取。
 */
@interface ZSDNavBar : UINavigationBar

- (void)setBackgroundImage:(NSString *)imgName;
- (void)setLeftItemImage:(NSString*)imgName frame:(CGRect)rect action:(SEL)action;
- (void)setRightItemImage:(NSString*)imgName frame:(CGRect)rect action:(SEL)action;
- (void)setLeftItemTitle:(NSString*)title backgroundImage:(NSString*)imgName action:(SEL)action;
- (void)setRightItemTitle:(NSString*)title backgroundImage:(NSString*)imgName action:(SEL)action;
- (void)setBackItemBackgroundImage:(NSString*)imageName title:(NSString*)title;

@end
