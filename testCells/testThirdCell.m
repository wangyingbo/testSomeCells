//
//  testThirdCell.m
//  testCells
//
//  Created by 王迎博 on 16/1/27.
//  Copyright © 2016年 王迎博. All rights reserved.
//

#import "testThirdCell.h"

@implementation testThirdCell

- (void)awakeFromNib
{
    _thirdLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 100, 30)];
    _thirdLabel.text = @"testThirdCell";
    _thirdLabel.textColor = [UIColor orangeColor];
    [self addSubview:_thirdLabel];
}

@end
