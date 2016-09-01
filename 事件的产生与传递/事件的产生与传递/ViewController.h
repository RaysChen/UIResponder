//
//  ViewController.h
//  事件的产生与传递
//
//  Created by 陈曦 on 16/9/1.
//  Copyright © 2016年 chenxi. All rights reserved.
//



/*
 *  事件传递
 *
 * 事件，加入到一个由谁管理的事件队列中?UIApplication
 * 为什么用队列，不用栈。队列先进先出，意味着先产生的事件，先处理。
 *
 * 很多view，验证哪个view处理事件。这么多view，都需要监重写一个方法，搞个父类。
 * 一个view能处理事件，意味着事件传递给他了，那怎么传递? 事件是由父控件传递给子控件。
 * if父控件不处理事件，子控件也不能。为什么，因为事件是从父控件传递给子控件的。
 *
 * 一个view怎么不能处理事件。userInteractionEnabled = NO（不允许交互），hidden = YES，alpha <= 0.01
 *
 * UIImageView默认不允许用户交互，因此默认它上面的子控件不能接收事件。
 *
 * 怎么找到最合适的View？通过一个递归。
 * 第一个接收事件的控件是谁?窗口
 * 当事件传递给窗口的时候，就会让窗口去找最合适的view,1> 判断自己能不能接收事件 2> 点在不在窗口上 3> 去找比自己更合适的view，从后往前遍历子控件，拿到子控件后，把事件传递给这个子控件 4> 子控件拿到事件之后，又会做同样的判断，一直递归去找，直到找到最合适的view.
 *   事件传递的目的何在?找到最合适的view,把事件交给他。

 */
#import <UIKit/UIKit.h>

@interface ViewController : UIViewController


@end

