//
//  LCHCollectionViewCell.m
//  AutoSizedCellDemo
//
//  Created by apple on 16/5/25.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "LCHCollectionViewCell.h"
#import <Masonry.h>

@implementation LCHCollectionViewCell

- (id)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    if (self) {
        
        _firstLabel = [[UILabel alloc] init];
        _firstLabel.numberOfLines = 1;
        _firstLabel.textAlignment = NSTextAlignmentCenter;
        _firstLabel.backgroundColor = [UIColor redColor];
        _firstLabel.font = [UIFont systemFontOfSize:25];
        
        _secondLabel = [[UILabel alloc] init];
        _secondLabel.numberOfLines = 1;
        _secondLabel.textAlignment = NSTextAlignmentCenter;
        _secondLabel.backgroundColor = [UIColor greenColor];
        _secondLabel.font = [UIFont systemFontOfSize:25];
        
        [self.contentView addSubview:_firstLabel];
        [self.contentView addSubview:_secondLabel];
        
        self.backgroundColor = [UIColor blackColor];
    }
    
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];

    __weak typeof(self) weakSelf = self;
    [self.firstLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(weakSelf.contentView);
        make.left.equalTo(weakSelf.contentView);
        make.width.greaterThanOrEqualTo(@0.1);
        make.height.greaterThanOrEqualTo(@0.1);
        make.height.equalTo(weakSelf.contentView).priorityLow();
    }];
    
    [self.secondLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(weakSelf.contentView);
        make.left.mas_equalTo(weakSelf.firstLabel.mas_right);
        make.width.greaterThanOrEqualTo(@0.1);
        make.height.greaterThanOrEqualTo(@0.1);
        make.right.equalTo(weakSelf.contentView).priorityLow();
        make.height.equalTo(weakSelf.contentView).priorityLow();
        
    }];
}


@end
