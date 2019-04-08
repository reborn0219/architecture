//
//  HomePageView.m
//  OneBAuction
//
//  Created by 刘帅 on 2019/4/7.
//  Copyright © 2019 刘帅. All rights reserved.
//

#import "HomePageView.h"
@interface HomePageView()
@property (weak, nonatomic) IBOutlet UIScrollView *backScroller;
@property (weak, nonatomic) IBOutlet PANewHomeBannerView *bannerView;

@end
@implementation HomePageView

-(void)awakeFromNib{
    [super awakeFromNib];
    _backScroller.bounces = NO;
    [self.bannerView updateWithBannerArray:@[@"1",@"3",@"3"]];
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
