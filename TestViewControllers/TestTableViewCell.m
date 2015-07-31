//
//  TestTableViewCell.m
//  TestViewControllers
//
//  Created by Cheuk Dong on 7/30/15.
//  Copyright (c) 2015 Cheuk Dong. All rights reserved.
//

#import "TestTableViewCell.h"

@implementation TestTableViewCell

static NSString *CVCellID = @"CVID";

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (!(self = [super initWithStyle:style reuseIdentifier:reuseIdentifier])) return nil;
    
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    layout.sectionInset = UIEdgeInsetsMake(0, 0, 0, 0);
    layout.itemSize = CGSizeMake(100, 100);
    layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    self.collectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(0, 0, 300, 150) collectionViewLayout:layout];
    //[self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:CVCellID];
    self.collectionView.backgroundColor = [UIColor greenColor];
    self.collectionView.showsHorizontalScrollIndicator = NO;
    [self.contentView addSubview:self.collectionView];
    
    return self;
}

-(void)layoutSubviews
{
    [super layoutSubviews];
    
    self.collectionView.frame = self.contentView.bounds;
}

@end
