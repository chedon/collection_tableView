//
//  TestTableViewController.m
//  TestViewControllers
//
//  Created by Cheuk Dong on 7/30/15.
//  Copyright (c) 2015 Cheuk Dong. All rights reserved.
//

#import "TestTableViewController.h"
#import "TestCollectionViewController.h"
#import "TestTableViewCell.h"
#import "TestCollectionViewCell.h"

@implementation TestTableViewController

static NSString *TableCellIdentifier = @"TableCell";
static NSString *CVCellIdentifier = @"CVCell";

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    TestTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:TableCellIdentifier];
    if (cell == nil) {
        cell = [[TestTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:TableCellIdentifier];
        cell.collectionView.dataSource = self;
        [cell.collectionView registerClass:[TestCollectionViewCell class] forCellWithReuseIdentifier:CVCellIdentifier];
    }
    
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 2;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 150;
}

- (void)collectionView:(UICollectionView *)collectionView willDisplayCell:(UICollectionViewCell *)cell forItemAtIndexPath:(NSIndexPath *)indexPath {
    
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:CVCellIdentifier forIndexPath:indexPath];
    
    cell.backgroundColor = [UIColor blueColor];
//    UILabel *lb = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 20, 20)];
//    lb.text = @"foobar";
//    
//    [cell.contentView addSubview:lb];
    
    return cell;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 5;
}

@end
