//
//  testForthCell.m
//  testCells
//
//  Created by 王迎博 on 16/1/28.
//  Copyright © 2016年 王迎博. All rights reserved.
//

#import "testForthCell.h"

@implementation testForthCell
- (void)awakeFromNib
{
    _forthLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 100, 30)];
    _forthLabel.text = @"testForthCell";
    _forthLabel.textColor = [UIColor blackColor];
    [self addSubview:_forthLabel];
}
@end
