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
    NSLog(@"%ld",touches.count);

}

//当手指在view上移动的时候调用
-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{

    NSLog(@"%s",__func__);
    
    //获取UITouch对象
    UITouch *touch = [touches anyObject];
    
    //获取当前点
    CGPoint cruP = [touch locationInView:self];
    //获取上一个点
    CGPoint preP  = [touch previousLocationInView:self];
    //获取x轴偏移量
    CGFloat offsetX = cruP.x - preP.x;
    //获取y轴的偏移量
    CGFloat offsetY= cruP.y - preP.y;
    //修改view的位置
    self.transform = CGAffineTransformTranslate(self.transform, offsetX, offsetY);
}

//当手指离开view的时候调用
-(void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{

    NSLog(@"%s",__func__);
}

//当触摸事件被打断的时候调用（打电话等）
-(void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{

}
@end
