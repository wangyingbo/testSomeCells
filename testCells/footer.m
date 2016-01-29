//
//  footer.m
//  testCells
//
//  Created by 王迎博 on 16/1/27.
//  Copyright © 2016年 王迎博. All rights reserved.
//

#import "footer.h"

@implementation footer

- (void)awakeFromNib
{
//    _footButton = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 200, 200)];
//    [_footButton setTitle:@"带你环游世界" forState:UIControlStateNormal];
//    [_footButton setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
//    [_footButton setBackgroundColor:[UIColor orangeColor]];
//    [self addSubview:_footButton];
    
    _footLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 100, 30)];
    _footLabel.text = @"testFooter";
    _footLabel.textColor = [UIColor orangeColor];
    [self addSubview:_footLabel];
}


- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    

    return self;
}


- (instancetype)init
{
    self = [super init];

    return self;
}

@end
