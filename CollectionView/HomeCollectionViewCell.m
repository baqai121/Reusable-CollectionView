//
//  HomeCollectionViewCell.m
//  CollectionView
//
//  Created by Daniyal Yousuf on 1/31/19.
//  Copyright © 2019 Daniyal Yousuf. All rights reserved.
//

#import "HomeCollectionViewCell.h"


@implementation HomeCollectionViewCell {
    
    #pragma mark - IBOUTLETS
    __weak IBOutlet UILabel *lblTitle;
    __weak IBOutlet UIView *viewUnderline;
    
}


- (void)awakeFromNib {

    [super awakeFromNib];
    //[viewUnderline setBackgroundColor: [Color]];

}

- (void)setSelected:(BOOL)selected {
    
    if (selected) {
        
        [viewUnderline setHidden:NO];
        
    } else {
        
        [viewUnderline setHidden:YES];
        
    }
    
}

@end
