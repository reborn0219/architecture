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
    
    _backView.clipsToBounds = YES;
//    _backView.layer.cornerRadius = 10;
    CGRect rect = CGRectMake(0, 0,(SCREENWIDTH-30-10)/2,(SCREENWIDTH-30-10)/2*1.5);
    UIBezierPath *fieldPath = [UIBezierPath bezierPathWithRoundedRect:rect byRoundingCorners:UIRectCornerTopRight | UIRectCornerBottomLeft cornerRadii:CGSizeMake(10 ,10)];
    CAShapeLayer *fieldLayer = [[CAShapeLayer alloc] init];
    fieldLayer.frame =rect;
    fieldLayer.path = fieldPath.CGPath;
    _backView.layer.mask = fieldLayer;
    
}

@end
