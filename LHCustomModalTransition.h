//
//  LHCustomModalTransition.h
//  JianShuPopViewDemo
//
//  Created by LinGrea on 16/2/2.
//  Copyright © 2016年 Lin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LHCustomModalTransition : UIPercentDrivenInteractiveTransition<UIViewControllerAnimatedTransitioning,UIViewControllerTransitioningDelegate,UIGestureRecognizerDelegate>

//---设置是否可拖拽（默认：不可拖动）
@property (nonatomic, assign, getter=isDragable) BOOL dragable;
//---初始化 model视图控制器
- (id)initWithModalViewController:(UIViewController *)modalViewController;

@end
