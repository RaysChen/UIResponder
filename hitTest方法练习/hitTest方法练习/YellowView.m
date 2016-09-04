//
//  YellowView.m
//  hitTest方法练习
//
//  Created by 陈曦 on 16/9/4.
//  Copyright © 2016年 chenxi. All rights reserved.
//

/**
 ** 分析思路：如果一个点，同时在黄色view和按钮上，由按钮处理事件，怎么做?
 * 分析事件传递: 当黄色要处理事件，首先事件得传递到他身上
 * 重写hitTest方法：事件传递到某个控件，调用什么方法?hitTest
 * 返回nil什么意思？如果直接返回nil，意味着黄色的view，没有找到最合适的view,他的父控件，就会遍历下一个控件，也就是按钮，询问按钮是不是最合适的view.
 *
 *
 */

#import "YellowView.h"
@interface YellowView()

@property (nonatomic,weak)IBOutlet UIButton*btn;

@end


@implementation YellowView

-(UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event{

    //当前坐标系的点转换到按钮上的点
    CGPoint btnP = [self convertPoint:point toView:self.btn];
    
    //判断点在不在按钮上
    if ([self.btn pointInside:btnP withEvent:event]) {
        
        //点在按钮上
        return self.btn;
    } else {
        return [super hitTest:point withEvent:event];
    }
    
}








-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    
    NSLog(@"%s", __func__);
}

@end
