# JianShuPopViewDemo
尝试封装简书、淘宝弹出效果动画

封装思路见：[简书、淘宝弹出效果动画demo](http://linbling.com/2016/02/03/catransform3d-shi-xian-jian-shu-appdan-chu-shi-tu-xiao-guo/)

![](https://github.com/LinBling/JianShuPopViewDemo/blob/master/2016-02-03%2016_20_30.gif)

###使用方法

    @property (nonatomic, strong) LHCustomModalTransition *transition;
    
    ......
    
    //---初始化要弹出跳转的视图控制器
    ModalViewController *modalVC = [ModalViewController new];
    //---必须强引用，否则会被释放，自定义dismiss的转场无效
    self.transition = [[LHCustomModalTransition alloc]initWithModalViewController:modalVC];
    //---是否可下拉收起
    self.transition.dragable = YES;
    modalVC.transitioningDelegate = self.transition;
    //---必须添加这句.自定义转场动画
    modalVC.modalPresentationStyle = UIModalPresentationCustom;
