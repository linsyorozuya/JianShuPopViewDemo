# JianShuPopViewDemo
简书、淘宝弹出效果动画demo



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
