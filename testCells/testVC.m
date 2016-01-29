//
//  testVC.m
//  testCells
//
//  Created by 王迎博 on 16/1/27.
//  Copyright © 2016年 王迎博. All rights reserved.
//

#import "testVC.h"
#import "testFirstCell.h"
#import "testFirstCell.h"
#import "testSecondCell.h"
#import "header.h"
#import "footer.h"
#import "testThirdCell.h"
#import "testForthCell.h"

@interface testVC ()<UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout>
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;
@property (nonatomic,strong) UILabel *testLabel;
@end

@implementation testVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.collectionView.backgroundColor = [UIColor whiteColor];
    self.collectionView.dataSource = self;
    self.collectionView.delegate =self;
    
    NSString *reuseIdentifier = @"testSecondCell";
    [self.collectionView registerClass:[testSecondCell class] forCellWithReuseIdentifier:reuseIdentifier];
    
    NSString *thirdStr = @"testThirdCell";
    [self.collectionView registerNib:[UINib nibWithNibName:@"testThirdCell" bundle:nil] forCellWithReuseIdentifier:thirdStr];
}

- (void)loadView
{
    [super loadView];
    
    //写法新颖
    _testLabel = ({
        UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(0, 100, 200, 50)];
        label.text = @"test这种写法是什么鬼";
        label.textColor = [UIColor redColor];
        label;
    });
    [_collectionView addSubview:_testLabel];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 7;
}
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 4;
}


- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    //第一个cell是用和storyboard关联的cell,是storyboard上的第一个cell
    if (indexPath.section == 0)
    {
        testFirstCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"testFIrstCell" forIndexPath:indexPath];
        
        cell.backgroundColor = [UIColor orangeColor];
        return cell;
    }
    else if (indexPath.section == 1)//用纯代码的第二个cell，需要register a class
    {
        static NSString *IDStr = @"testSecondCell";
        testSecondCell *cell = [[testSecondCell alloc]init];
        cell = [collectionView dequeueReusableCellWithReuseIdentifier:IDStr forIndexPath:indexPath];
        
        cell.secondLabel.text = @"testSecondCell";
        cell.backgroundColor = [UIColor blueColor];
        return cell;
    }
    else if (indexPath.section == 2)//用xib文件建的第三个cell，需要register a nib
    {
        static NSString *IDStr = @"testThirdCell";
        testThirdCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:IDStr forIndexPath:indexPath];
        cell.backgroundColor = [UIColor purpleColor];
        return cell;
    }
    else //storyboard上拖得第二个cell，用来建第四个cell
    {
        static NSString *IDStr = @"testForthCell";
        testForthCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:IDStr forIndexPath:indexPath];
        cell.backgroundColor = [UIColor brownColor];
        return cell;
    }
}


- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath
{
    UICollectionReusableView *reusableView = nil;
    //添加headerView
    if (kind == UICollectionElementKindSectionHeader)
    {
        header *headerView = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"header" forIndexPath:indexPath];
        
        headerView.backgroundColor = [UIColor lightGrayColor];//section的背景颜色
        reusableView = headerView;
    }
    
    //添加footerView
    if (kind == UICollectionElementKindSectionFooter)
    {
        footer *footerView = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:@"footer" forIndexPath:indexPath];
        footerView.backgroundColor = [UIColor grayColor];
        reusableView = footerView;
    }
    
    
    return reusableView;

}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    CGSize size;
    if (indexPath.section == 0)
    {
        size = CGSizeMake((self.view.frame.size.width - 26)/3, (self.view.frame.size.width - 26)/3);
    }
    else
    {
        size = CGSizeMake((self.view.frame.size.width - 23)/2, (self.view.frame.size.width - 26)/3);
    }
    
    return size;
}

- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section
{
    UIEdgeInsets insets = UIEdgeInsetsMake(5, 10, 5, 10);
    
    return insets;
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section
{
    NSInteger count = 3;
    return count;
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section
{
    NSInteger count = 10;
    if (section == 0)
    {
        count = 10;
    }
    else
    {
        count = 3;
    }
    return count;
}
@end
