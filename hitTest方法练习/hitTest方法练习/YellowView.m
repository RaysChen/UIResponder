//
//  YellowView.m
//  hitTest方法练习
//
//  Created by 陈曦 on 16/9/4.
//  Copyright © 2016年 chenxi. All rights reserved.
//

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
