//
//  ViewController.h
//  hitTest方法和pointInside方法
//
//  Created by 陈曦 on 16/9/2.
//  Copyright © 2016年 chenxi. All rights reserved.
//

/**
 *  * （了解hitTest）学习一个方法必须了解：什么时候调用和这个方法有什么用
 1. hitTest什么时候调用:当一个事件传递给一个控件的时候，控件就会调用这个方法
 2. hitTest作用: 寻找到最合适的view。
 * （回顾下事件传递），UIApplication -> UIWindow
 
 *  UIWindow去寻找最合适的view? [UIWindow hitTest:withEvent:]里面做了什么事情？
 1> 判断窗口能不能处理事件? 如果不能，意味着窗口不是最合适的view，而且也不会去寻找比自己更合适的view,直接返回nil,通知UIApplication，没有最合适的view。
 2> 判断点在不在窗口
 3> 遍历自己的子控件，寻找有没有比自己更合适的view
 4> 如果子控件不接收事件，意味着子控件没有找到最合适的view,然后返回nil,告诉窗口没有找到更合适的view,窗口就知道没有比自己更合适的view,就自己处理事件。
 * 验证下hitTest方法返回nil，里面的子控件能处理事件吗？ 重写根控制器view的hitTest:withEvent:方法，
 * 验证这个方法是否真能找到最合适的view？
 * 如果点击屏幕任何一个地方，都是白色的view，怎么做。直接返回白色的view,就不会继续去找白色view的子控件了。
 
 * pointInside方法
 * pointInside作用：判断一个点在不在一个控件上
 * point参数:方法调用者坐标系上的点


 */


#import <UIKit/UIKit.h>

@interface ViewController : UIViewController


@end

