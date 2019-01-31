//
//  HomeCollectionView.m
//  CollectionView
//
//  Created by Daniyal Yousuf on 1/31/19.
//  Copyright © 2019 Daniyal Yousuf. All rights reserved.
//

#import "HomeCollectionView.h"
#import "HomeCollectionViewCell.h"

@interface HomeCollectionView () <UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout>

@end

@implementation HomeCollectionView

-(void)awakeFromNib {
    
    [super awakeFromNib];
    [self registerNib:[UINib nibWithNibName:NSStringFromClass([HomeCollectionViewCell class]) bundle:[NSBundle mainBundle]] forCellWithReuseIdentifier:@"HomeViewControllerCell1"];
    self.delegate   = self;
    self.dataSource = self;
    self.allowsMultipleSelection = FALSE;
    
}



#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {

    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {

    return 5;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {

    
    HomeCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"HomeViewControllerCell1" forIndexPath:indexPath];
    return cell;
    
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    return CGSizeMake(collectionView.frame.size.width/ 4.0, collectionView.frame.size.height);
    
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section {
    
    return 0;
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section {
    
    return 0;
    
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    
    
    HomeCollectionViewCell *currentCell = (HomeCollectionViewCell *) [collectionView cellForItemAtIndexPath:indexPath];
    [currentCell setSelected:YES];
    
    
}

@end
