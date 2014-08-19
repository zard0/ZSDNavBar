//
//  ZSDBaseVC.m
//  Test
//
//  Created by 林坤柱 on 14-8-18.
//  Copyright (c) 2014年 林坤柱. All rights reserved.
//


#import "ZSDBaseVC.h"

@interface ZSDBaseVC ()

@end

@implementation ZSDBaseVC

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
    // Do any additional setup after loading the view.
}

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

@end
