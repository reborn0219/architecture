//
//  ZeroAuctionHeaderView.m
//  OneBAuction
//
//  Created by 刘帅 on 2019/4/10.
//  Copyright © 2019 刘帅. All rights reserved.
//

#import "ZeroAuctionHeaderView.h"
@interface ZeroAuctionHeaderView()
@property(nonatomic,strong)NSMutableArray *viewArr;
@property (weak, nonatomic) IBOutlet UIView *view_1;
@property (weak, nonatomic) IBOutlet UIView *view_2;
@property (weak, nonatomic) IBOutlet UIView *view_3;
@property (weak, nonatomic) IBOutlet UIView *view_4;

@end


@implementation ZeroAuctionHeaderView

-(void)awakeFromNib{
    [super awakeFromNib];
    _viewArr = [NSMutableArray array];
    [_viewArr addObject:_view_1];
    [_viewArr addObject:_view_2];
    [_viewArr addObject:_view_3];
    [_viewArr addObject:_view_4];
    
    for (UIView * v in _viewArr) {
        
        UIView * bottomV = [[UIView alloc]initWithFrame:CGRectMake((CGRectGetWidth(v.bounds)-10)/2.0f,CGRectGetHeight(v.bounds)-5,10,10)];
        bottomV.tag = 3;
        CGAffineTransform transform = CGAffineTransformMakeRotation(M_PI_4);
        bottomV.transform = transform;
        [bottomV setBackgroundColor:HexRGB(0xDF544D)];
        [v addSubview:bottomV];
    }
}

@end
