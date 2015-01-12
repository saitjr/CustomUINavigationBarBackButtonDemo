//
//  PushToViewController.m
//  2015-01-10-UINavigation封装Demo
//
//  Created by TangJR on 15/1/10.
//  Copyright (c) 2015年 tangjr. All rights reserved.
//

#import "PushToViewController.h"

static int pushIndex = 0;

@interface PushToViewController ()

@end

@implementation PushToViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = [NSString stringWithFormat:@"%ld", (long)pushIndex];
    self.view.backgroundColor = [UIColor orangeColor];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.bounds = CGRectMake(0, 0, 100, 60);
    button.center = CGPointMake(self.view.bounds.size.width / 2, self.view.bounds.size.height / 2);
    [button setTitle:@"推到下一个" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)buttonPressed:(UIButton *)sender {
    
    pushIndex ++;
    PushToViewController *vc = [[PushToViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

@end