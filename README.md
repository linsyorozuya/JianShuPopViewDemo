# JianShuPopViewDemo
尝试封装简书、淘宝弹出效果动画

详情见：[简书、淘宝弹出效果动画demo](http://linsyorozuya.com/catransform3d-shi-xian-jian-shu-appdan-chu-shi-tu-xiao-guo/)

![](https://github.com/LinBling/JianShuPopViewDemo/blob/master/2016-02-03%2016_20_30.gif)

### 使用方法

    @property (nonatomic, strong) LHCustomModalTransition *transition;
    
    ......
    
    //---初始化要弹出跳转的视图控制器
    ModalViewController *modalVC = [ModalViewController new];
    //---必须添加这句.自定义转场动画
    modalVC.modalPresentationStyle = UIModalPresentationCustom;
    
    //---必须强引用，否则会被释放，自定义dismiss的转场无效
    self.transition = [[LHCustomModalTransition alloc]initWithModalViewController:modalVC];

    //-----------------可选的以下设置
    
    self.transition.dragable = YES;//---是否可下拉收起
    self.transition.transitionStyle = LHCustomScaleTransitionStyle;//---设置缩放样式
    self.transition.behindViewAlpha = 0.5f;//---设置缩放比例
    self.transition.duration = 2.0f;//---设置缩放时间
    self.transition.behindViewAlpha = 0.5f;//---设置要隐藏的VC透明度
    
    //--------------------------------
     
    //---设置代理为自定义的转场
    modalVC.transitioningDelegate = self.transition;


