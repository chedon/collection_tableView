//
//  TestCollectionViewController.m
//  TestViewControllers
//
//  Created by Cheuk Dong on 7/30/15.
//  Copyright (c) 2015 Cheuk Dong. All rights reserved.
//

#import "TestCollectionViewController.h"

@implementation TestCollectionViewController

static NSString *CellIdentifier = @"MyCollectionCell";

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 5;
}

// The cell that is returned must be retrieved from a call to - dequeueReusableCellWithReuseIdentifier:forIndexPath:
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"MyCollectionCell" forIndexPath:indexPath];
    
    if (cell == nil) {
        cell = [[UICollectionViewCell alloc] initWithFrame:CGRectMake(0, 0, 5, 5)];
    }
    
    cell.backgroundColor = [UIColor redColor];
    // Configure the cell.
    return cell;
}

@end
