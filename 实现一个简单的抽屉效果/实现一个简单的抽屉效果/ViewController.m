//
//  ViewController.m
//  实现一个简单的抽屉效果
//
//  Created by 陈曦 on 16/9/6.
//  Copyright © 2016年 chenxi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic,weak) UIView *mainView;
@property (nonatomic,weak) UIView *leftView;
@property (nonatomic,weak) UIView *rightView;


@end

@implementation ViewController






- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUpChildView];
  
}



//添加子控件
-(void)setUpChildView{

    //main
    UIView *mainView = [[UIView alloc]initWithFrame:self.view.bounds];
    mainView.backgroundColor = [UIColor redColor];
    [self.view addSubview:mainView];
    _mainView = mainView;
    
    //right
    UIView *rightView = [[UIView alloc]initWithFrame:self.view.bounds];
    rightView.backgroundColor = [UIColor blueColor];
    [self.view addSubview:rightView];
    _rightView = rightView;

    //left
    UIView *leftView = [[UIView alloc]initWithFrame:self.view.bounds];
    rightView.backgroundColor = [UIColor grayColor];
    [self.view addSubview:leftView];
    _leftView = leftView;
    





}
@end
