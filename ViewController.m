//
//  ViewController.m
//  JianShuPopViewDemo
//
//  Created by LinGrea on 16/2/1.
//  Copyright © 2016年 Lin. All rights reserved.
//

#import "ViewController.h"
#import "ModalViewController.h"
#import "LHCustomModalTransition.h"

@interface ViewController ()
//---全局持有，强应用
@property (nonatomic, strong) LHCustomModalTransition *transition;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)button_Click:(id)sender {
    [self popView];
}

//---弹出视图
- (void)popView
{
    //---初始化要弹出跳转的视图控制器
    ModalViewController *modalVC = [ModalViewController new];
    //---必须强引用，否则会被释放，自定义dismiss的转场无效
    self.transition = [[LHCustomModalTransition alloc]initWithModalViewController:modalVC];
    
    self.transition.dragable = YES;//---是否可下拉收起
//    self.transition.transitionStyle = LHCustomScaleTransitionStyle;//---设置缩放样式
//    self.transition.behindViewAlpha = 0.5f;//---设置缩放比例
//    self.transition.duration = 2.0f;//---设置缩放时间
//    self.transition.behindViewAlpha = 0.5f;//---设置要隐藏的VC透明度
    
    modalVC.transitioningDelegate = self.transition;
    //---必须添加这句.自定义转场动画
    modalVC.modalPresentationStyle = UIModalPresentationCustom;

    [self presentViewController:modalVC animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
