//
//  HQProductViewController.m
//  Lottery
//
//  Created by 胡强 on 4/19/15.
//  Copyright (c) 2015 huqiang. All rights reserved.
//

#import "HQProductViewController.h"
#import "HQProductItem.h"
#import "HQProductCollectionViewCell.h"

@interface HQProductViewController ()

@property (nonatomic,strong) NSMutableArray *products;

@end

@implementation HQProductViewController

static NSString * const reuseIdentifier = @"Cell";

-(NSMutableArray *)products{
    if (!_products) {
        _products = [NSMutableArray array];
        NSString *fileName = [[NSBundle mainBundle] pathForResource:@"products.json" ofType:nil];
        NSData *data = [NSData dataWithContentsOfFile:fileName];
        NSArray *jsonArray = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
        for (NSDictionary *dict in jsonArray) {
            HQProductItem *product = [HQProductItem productWithDict:dict];
            [_products addObject:product];
        }
    }
    return _products;
}

-(instancetype)init{
    // 创建流水布局
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    
    // 每一个cell的尺寸
    layout.itemSize = CGSizeMake(80, 80);
    
    // 垂直间距
    layout.minimumLineSpacing = 10;
    
    // 水平间距
    layout.minimumInteritemSpacing = 0;
    
    // 内边距
    layout.sectionInset = UIEdgeInsetsMake(10, 0, 0, 0);
    
    return [self initWithCollectionViewLayout:layout];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Register cell classes
//    [self.collectionView registerClass:[HQProductCollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    UINib *xib = [UINib nibWithNibName:@"HQProductCollectionViewCell" bundle:nil];
    
    [self.collectionView registerNib:xib forCellWithReuseIdentifier:reuseIdentifier];
    
    self.collectionView.backgroundColor = [UIColor whiteColor];
    
    
    // Do any additional setup after loading the view.
}

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {

    return self.products.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    HQProductItem *product = self.products[indexPath.item];
    
    HQProductCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    cell.product = product;
    
    
    return cell;
}

#pragma mark <UICollectionViewDelegate>

/*
// Uncomment this method to specify if the specified item should be highlighted during tracking
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
}
*/

/*
// Uncomment this method to specify if the specified item should be selected
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}
*/

/*
// Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
}
*/

@end
