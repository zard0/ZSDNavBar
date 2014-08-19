//
//  SecondVC.m
//  Test
//
//  Created by 林坤柱 on 14-8-18.
//  Copyright (c) 2014年 林坤柱. All rights reserved.
//

#import "SecondVC.h"
#import "ThirdVC.h"

@interface SecondVC ()

@end

@implementation SecondVC

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor purpleColor];
//    [self initNav];
}
- (void)initNav
{
    //定制导航栏背景
//    [self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"nav_bg_ios7.png"] forBarMetrics:UIBarMetricsDefault];
    
    //定制返回按钮
//    UIBarButtonItem *backItem = [[UIBarButtonItem alloc] init];
//    backItem.title = @"xxxBack";
//    [backItem setBackButtonBackgroundImage:[UIImage imageNamed:@"back_btn@2x.png"] forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
//    [backItem setTarget:self];
//    [backItem setAction:@selector(back)];
//    self.navigationItem.backBarButtonItem = backItem;
    
    //定制前进按钮
    UIBarButtonItem *goItem = [[UIBarButtonItem alloc] init];
    goItem.title = @"xxxGo";
    [goItem setBackgroundImage:[UIImage imageNamed:@"go_btn@2x.png"] forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
    [goItem setAction:@selector(go)];
    [goItem setTarget:self];
//    self.navigationItem.rightBarButtonItem = goItem;
}
- (void)rightItemHandler
{
    ThirdVC *vc = [[ThirdVC alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}
- (void)go
{
    ThirdVC *vc = [[ThirdVC alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}
- (void)leftItemHandler
{
    [self.navigationController popViewControllerAnimated:YES];
}
- (void)back
{
    [self.navigationController popViewControllerAnimated:YES];
}

@end
