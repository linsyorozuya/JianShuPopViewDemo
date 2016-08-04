//
//  ModalViewController.m
//  JianShuPopViewDemo
//
//  Created by LinGrea on 16/2/2.
//  Copyright © 2016年 Lin. All rights reserved.
//

#import "ModalViewController.h"
#define kContent_Height   (CGRectGetHeight(self.view.frame))
#define kContent_Width    (CGRectGetWidth(self.view.frame))

@implementation ModalViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
//    self.view.backgroundColor = [UIColor redColor];
    
    UIView* bg_view = [UIView new];
    bg_view.frame = self.view.frame;
    bg_view.backgroundColor = [UIColor colorWithRed:0.965f green:0.965f blue:0.965f alpha:0.97f];
    [self.view addSubview:bg_view];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(0, 0, 100, 100);
    button.center = self.view.center;
    button.backgroundColor = [UIColor redColor];
    [button setTitle:@"退下" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(tap) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:button];
    
}

- (void)tap
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
