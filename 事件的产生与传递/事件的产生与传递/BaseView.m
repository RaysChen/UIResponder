//
//  BaseView.m
//  事件的产生与传递
//
//  Created by 陈曦 on 16/9/1.
//  Copyright © 2016年 chenxi. All rights reserved.
//

#import "BaseView.h"

@implementation BaseView

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{

 NSLog(@"%@---touchesBegan",[self class]);

}

@end
