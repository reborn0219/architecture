//
//  HomePageView.m
//  OneBAuction
//
//  Created by 刘帅 on 2019/4/7.
//  Copyright © 2019 刘帅. All rights reserved.
//

#import "HomePageView.h"
@interface HomePageView()
@property (weak, nonatomic) IBOutlet UIView *topView;
@property (weak, nonatomic) IBOutlet UIScrollView *backScroller;
@property (weak, nonatomic) IBOutlet PANewHomeBannerView *bannerView;
@property (weak, nonatomic) IBOutlet UIView *view_1;
@property (weak, nonatomic) IBOutlet UIView *view_2;
@property (weak, nonatomic) IBOutlet UIView *view_3;
@property (weak, nonatomic) IBOutlet UIView *view_4;

@end
@implementation HomePageView

-(void)awakeFromNib{
    [super awakeFromNib];
    _backScroller.bounces = NO;
    [self.bannerView updateWithBannerArray:@[@"1",@"3",@"3"]];
    [_topView setBackgroundColor:BackColor];
    NSMutableArray * viewArr = [NSMutableArray array];
    [viewArr addObject:_view_1];
    [viewArr addObject:_view_2];
    [viewArr addObject:_view_3];
    [viewArr addObject:_view_4];

    for (UIView *_backView in viewArr) {
        UIBezierPath *fieldPath = [UIBezierPath bezierPathWithRoundedRect:_backView.bounds byRoundingCorners:UIRectCornerTopRight | UIRectCornerBottomLeft cornerRadii:CGSizeMake(10 ,10)];
        CAShapeLayer *fieldLayer = [[CAShapeLayer alloc] init];
        fieldLayer.frame = _backView.bounds;
        fieldLayer.path = fieldPath.CGPath;
        _backView.layer.mask = fieldLayer;
        _backView.clipsToBounds = YES;
    }
}
   
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
- (IBAction)liveMoreAction:(id)sender {
    if (self.block) {
        _block(0);
    }
}
- (IBAction)zeroAuctionAction:(id)sender {
    if (self.block) {
        _block(1);
    }
}

@end
