//
//  ViewController.m
//  实现一个简单的抽屉效果
//
//  Created by 陈曦 on 16/9/6.
//  Copyright © 2016年 chenxi. All rights reserved.
//




// 宏里面的#，会自动把后面的参数变成C语言的字符串
#define keyPath(objc,keyPath) @(((void)objc.keyPath,#keyPath))


// 宏的操作原理，每输入一个字母就会直接把宏右边的拷贝，并且会自动补齐前面的内容。

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic,weak) UIView *mainView;
@property (nonatomic,weak) UIView *leftView;
@property (nonatomic,weak) UIView *rightView;


@end

@implementation ViewController






- (void)viewDidLoad {
    [super viewDidLoad];
    
    //    #define keyPath(objc,keyPath) #(objc.keyPath,keyPath)
    // 逗号表达式，只取最右边的值
    int a = ((void)5,2);
    
    
    // 如果把c语言字符串转OC字符串
    char *c = "abc";
    
    NSLog(@"%@", [@(c) class]);
    
    NSLog(@"%d",a);
    
    //    NSLog(@"%s",keyPath(_mainV, frame));
    
    
    NSLog(@"%@",[keyPath(_mainView, frame) class]);
    
    
    
    
    //添加子控件
    [self setUpChildView];
    
    
    // 添加Pan手势
    UIPanGestureRecognizer *pan = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(pan:)];
    
    [self.view addGestureRecognizer:pan];
    
    
    // 利用KVO时刻监听mainV的frame属性
    // Observer:观察者 谁想监听
    // KeyPath：监听的属性
    // options:监听新值的改变
    [_mainView addObserver:self forKeyPath:keyPath(_mainView, frame) options:NSKeyValueObservingOptionNew context:nil];
    
    // 什么情况下需要用到自动提示宏

  
}


// 只要监听的属性一改变，就会调用观察者的这个方法，通知你有新值
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
    NSLog(@"%@",NSStringFromCGRect(_mainView.frame));
    if (_mainView.frame.origin.x > 0) { // 往右边移动，隐藏蓝色的view
        _rightView.hidden = YES;
    }else if (_mainView.frame.origin.x < 0){ // 往左边移动，显示蓝色的view
        _rightView.hidden = NO;
        
    }
}

// 在对象销毁的时候，一定要注意移除观察者
- (void)dealloc
{
    // 移除观察者
    [_mainView removeObserver:self forKeyPath:@"frame"];
}







#pragma mark - pan的方法
- (void)pan:(UIPanGestureRecognizer *)pan
{
    // 获取手势的移动的位置
    CGPoint transP = [pan translationInView:self.view];
    
    // 获取X轴的偏移量
    CGFloat offsetX = transP.x;
    
    // 修改mainV的Frame
    _mainView.frame = [self frameWithOffsetX:offsetX];
    
    // 复位
    [pan setTranslation:CGPointZero inView:self.view];
}

#pragma mark - 根据offsetX计算mainV的Frame
- (CGRect)frameWithOffsetX:(CGFloat)offsetX
{
    CGRect frame = _mainView.frame;
    frame.origin.x += offsetX;
    
    return frame;
}





//添加子控件
-(void)setUpChildView{
    
    //left
    UIView *leftView = [[UIView alloc]initWithFrame:self.view.bounds];
    leftView.backgroundColor = [UIColor grayColor];
    [self.view addSubview:leftView];
    _leftView = leftView;
    
    //right
    UIView *rightView = [[UIView alloc]initWithFrame:self.view.bounds];
    rightView.backgroundColor = [UIColor blueColor];
    [self.view addSubview:rightView];
    _rightView = rightView;



    //main
    UIView *mainView = [[UIView alloc]initWithFrame:self.view.bounds];
    mainView.backgroundColor = [UIColor redColor];
    [self.view addSubview:mainView];
    _mainView = mainView;
    





}
@end
