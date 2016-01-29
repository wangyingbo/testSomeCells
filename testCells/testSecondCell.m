//
//  testSecondCell.m
//  testCells
//
//  Created by 王迎博 on 16/1/27.
//  Copyright © 2016年 王迎博. All rights reserved.
//

#import "testSecondCell.h"

@implementation testSecondCell

- (instancetype)init
{
//    if (self = [super init])
//    {
//        //设置自定义的属性 如图片
//        _secondLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 120, 30)];
//        _secondLabel.text = @"testSecondCell";
//        _secondLabel.textColor = [UIColor orangeColor];
//        [self addSubview:_secondLabel];
//        
//    }
    return  self;
}

//初始化方法
-(instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame])
    {
        //设置自定义的属性 如图片
        _secondLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 120, 30)];
        _secondLabel.text = @"testSecondCell";
        _secondLabel.textColor = [UIColor orangeColor];
        [self addSubview:_secondLabel];
        
    }
    return  self;
}


@end
