//
//  OnePriceCell.m
//  OneBAuction
//
//  Created by 刘帅 on 2019/4/7.
//  Copyright © 2019 刘帅. All rights reserved.
//

#import "OnePriceCell.h"
@interface OnePriceCell()
@property (weak, nonatomic) IBOutlet UIView *backView;

@end
@implementation OnePriceCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    self.backgroundColor = [UIColor clearColor];
    UIBezierPath *fieldPath = [UIBezierPath bezierPathWithRoundedRect:_backView.bounds byRoundingCorners:UIRectCornerTopRight | UIRectCornerBottomLeft cornerRadii:CGSizeMake(10 ,10)];
    CAShapeLayer *fieldLayer = [[CAShapeLayer alloc] init];
    fieldLayer.frame = _backView.bounds;
    fieldLayer.path = fieldPath.CGPath;
    _backView.layer.mask = fieldLayer;
    _backView.clipsToBounds = YES;
    
}

@end
