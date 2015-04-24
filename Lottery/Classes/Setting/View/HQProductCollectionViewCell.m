//
//  HQProductCollectionViewCell.m
//  Lottery
//
//  Created by 胡强 on 4/20/15.
//  Copyright (c) 2015 huqiang. All rights reserved.
//

#import "HQProductCollectionViewCell.h"

@interface HQProductCollectionViewCell()
@property (weak, nonatomic) IBOutlet UIImageView *imgView;
@property (weak, nonatomic) IBOutlet UILabel *titleLable;

@end

@implementation HQProductCollectionViewCell

-(void)setProduct:(HQProductItem *)product{
    _product = product;
    self.imgView.image = [UIImage imageNamed:product.icon];
    self.titleLable.text = product.title;
}

- (void)awakeFromNib {
    // Initialization code
}

@end
