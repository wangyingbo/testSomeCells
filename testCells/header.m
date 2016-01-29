//
//  header.m
//  testCells
//
//  Created by 王迎博 on 16/1/27.
//  Copyright © 2016年 王迎博. All rights reserved.
//

#import "header.h"

@implementation header
- (void)awakeFromNib
{
    _headLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 100, 30)];
    _headLabel.text = @"testHeader";
    _headLabel.textColor = [UIColor orangeColor];
    [self addSubview:_headLabel];
}
@end
