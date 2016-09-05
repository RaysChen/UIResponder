//
//  ViewController.m
//  响应者链条
//
//  Created by 陈曦 on 16/9/5.
//  Copyright © 2016年 chenxi. All rights reserved.
//
/**
 **响应者链条，目的知道谁最终处理事件
 * touch默认做法:自己不处理事件，交给上一个响应者处理touch事件。
 * 响应者链条，点击绿色的view,如果不处理事件，就会往上传递。
 * 验证touch的默认做法 先恢复所有view的默认做法
 * 监听黄色点击，蓝色点击。
 * 黄色调用默认做法，事件传递给谁处理?蓝色
 * 得出结论：1> touch的默认做法：自己不处理，交给上一个响应者。 2> 上一个响应者默认是父控件
 * 两个view怎么同时处理事件?一个view处理方法，在调用父类默认的做法
 * 把事件传递给白色的view，怎么做?
 * 总结下事件传递的完整过程.
 * 把事件传递给控制器，测试白色view的上一个响应者是否是控制器。
 * 回顾响应者链条
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
