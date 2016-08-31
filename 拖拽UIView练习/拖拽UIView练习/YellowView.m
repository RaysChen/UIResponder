//
//  YellowView.m
//  拖拽UIView练习
//
//  Created by 陈曦 on 16/8/31.
//  Copyright © 2016年 chenxi. All rights reserved.
//

#import "YellowView.h"

@implementation YellowView


//当手指开始触摸view的时候调用
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{

    NSLog(@"%s",__func__);

}

//当手指在view上移动的时候调用
-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{

    NSLog(@"%s",__func__);
}

//当手指离开view的时候调用
-(void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{

    NSLog(@"%s",__func__);
}

//当触摸事件被打断的时候调用（打电话等）
-(void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{

}
@end
