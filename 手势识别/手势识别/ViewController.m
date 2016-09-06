//
//  ViewController.m
//  手势识别
//
//  Created by 陈曦 on 16/9/6.
//  Copyright © 2016年 chenxi. All rights reserved.
//


/**
 *  手势识别
 使用UIImageView原因：之前既能看见图片，又能监听点击的只有UIButton,学了手势，UIImageView也可以。
 * tap(代理：左边不能点，右边能点)
 * longPress(allowableMovement:触发之前，最大的移动范围)
    > 默认调用两次，开始一次，结束一次。
 * swipe:(一个手势只能识别一个方向)
 * 旋转：
   基于上一次旋转
   注意:通过transform形变，需要去掉autolayout,才准确
 * 复位：(手势的取值都是相对最原始的位置，我们应该是需要相对上一次，因此每次调用，就复位一下，每次都是从零开始旋转角度)
   缩放：复位
 * 如何同时支持旋转和缩放？默认不支持多个手指，
   Simultaneously：同时
   当使用一个手势的时候会调用代理的Simultaneously方法，询问是否支持多个手势
 * pan
   获取平移的位置：translationInView
   复位：setTranslation:inView: 需要传一个view，因为点的位置跟坐标系有关系，看他是基于哪个坐标系被清空的。
 *
 *
 *
 *
 */

#import "ViewController.h"

@interface ViewController ()

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

@end
