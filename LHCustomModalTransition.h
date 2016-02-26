//
//  LHCustomModalTransition.h
//  JianShuPopViewDemo
//
//  Created by LinGrea on 16/2/2.
//  Copyright © 2016年 Lin. All rights reserved.
//

#import <UIKit/UIKit.h>

//---动画类型
typedef NS_ENUM(NSUInteger, LHCustomModalTransitionStyle) {
    LHCustomScaleTransitionStyle,//---简单缩放
    LHCustomScaleAndRotateTransitionStyle,//---简书效果（旋转加缩放）
};

@interface LHCustomModalTransition : NSObject<UIViewControllerAnimatedTransitioning,UIViewControllerInteractiveTransitioning,UIViewControllerTransitioningDelegate,UIGestureRecognizerDelegate>

//---设置是否可拖拽（默认：不可拖动）
@property (nonatomic, assign, getter=isDragable) BOOL dragable;
//---设置动画样式
@property (nonatomic, assign) LHCustomModalTransitionStyle transitionStyle;
//---设置缩放的比例
@property (nonatomic, assign) CGFloat reduceScale;
//---设置动画时间
@property (nonatomic, assign) CGFloat duration;

//---初始化 model视图控制器
- (id)initWithModalViewController:(UIViewController *)modalViewController;

@end
