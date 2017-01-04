//
//  testFirstCell.m
//  testCells
//
//  Created by 王迎博 on 16/1/27.
//  Copyright © 2016年 王迎博. All rights reserved.
//

#import "testFirstCell.h"

@implementation testFirstCell
- (void)awakeFromNib
{
    _firstLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 100, 30)];
    _firstLabel.text = @"testFirstCell";
    _firstLabel.textColor = [UIColor blackColor];
    [self addSubview:_firstLabel];
}
@end
