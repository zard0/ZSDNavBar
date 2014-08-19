//
//  ThirdVC.m
//  Test
//
//  Created by 林坤柱 on 14-8-18.
//  Copyright (c) 2014年 林坤柱. All rights reserved.
//

#import "ThirdVC.h"


@interface ThirdVC ()

@end

@implementation ThirdVC

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
    self.view.backgroundColor = [UIColor greenColor];
}
- (void)rightItemHandler
{
    NSLog(@"rightItemHandler in ThirdVC.");
}
- (void)leftItemHandler
{
    [self.navigationController popViewControllerAnimated:YES];
}
@end
