//
//  ViewController.m
//  CustomUINavigationBarBackButtonDemo
//
//  Created by TangJR on 15/1/12.
//  Copyright (c) 2015年 tangjr. All rights reserved.
//

#import "ViewController.h"
#import "PushToViewController.h"

@interface ViewController ()

- (IBAction)buttonPressed:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed:(id)sender {
    
    PushToViewController *vc = [[PushToViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}
@end
