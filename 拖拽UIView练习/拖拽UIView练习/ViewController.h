//
//  ViewController.h
//  拖拽UIView练习
//
//  Created by 陈曦 on 16/8/31.
//  Copyright © 2016年 chenxi. All rights reserved.
//



/**
 *  拖拽UIView练习
 
 * 为什么要自定义view：系统自带不能处理事件
 * 触摸事件的方法,触摸的完整过程。
 * 参数(NSSet,UITouch,UIEvent)
 * 重点UITouch，
 1.触摸事件方法中的UITouch都是同一个对象，因为一根手指对应一个UITouch.当手指移动或者抬起，并不会产生一个新的UITouch对象给你，而是改变UITouch里面的属性，
 1.默认三个方法里面只能获取到一个手指，为什么。UIView不支持多点触控
 2.怎么才能有两个手指，两个手指同时按，并且视图支持多点触控
 3.UITouch的tapCount有什么用？可以判断用户当前是双击还是单击
 4.UITouch的phase有什么用? 根据这个属性，判断当前需要调用哪个处理事件方法，begin,move,end
 程序思路：
 * 在TouchMove里面做事情-为什么?因为用户手指在视图上移动的时候才需要移动视图。
 * 获取用户当前的位置，获取用户之前的位置，就知道用户从哪移动到哪,这个位置也是视图移动的位置
 * 当前视图的位置 = 上一次视图的位置 + 手指的偏移量
 

 */

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController


@end

