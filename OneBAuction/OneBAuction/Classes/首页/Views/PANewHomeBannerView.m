//
//  PANewHomeBannerView.m
//  TimeHomeApp
//
//  Created by ning on 2018/7/30.
//  Copyright © 2018年 石家庄优思交通智能科技有限公司. All rights reserved.
//

#import "PANewHomeBannerView.h"
#import "SDCycleScrollView.h"
@interface PANewHomeBannerView()<SDCycleScrollViewDelegate>
@property (nonatomic,strong) SDCycleScrollView *cycleBannerView;
@property (nonatomic,strong) NSArray *bannerArray;
@end

@implementation PANewHomeBannerView

#pragma mark - Lifecycle
- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        [self addSubview:self.cycleBannerView];
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}
-(void)awakeFromNib{
    [super awakeFromNib];
    [self addSubview:self.cycleBannerView];
    self.backgroundColor = [UIColor clearColor];
}
-(SDCycleScrollView *)cycleBannerView{
    if (!_cycleBannerView) {
        _cycleBannerView =[SDCycleScrollView cycleScrollViewWithFrame:CGRectMake(0, 0, SCREENWIDTH-20, (SCREENWIDTH-20)/2.1) imageNamesGroup:nil];
        _cycleBannerView.delegate = self;
        _cycleBannerView.pageControlAliment = SDCycleScrollViewPageContolAlimentCenter;
        _cycleBannerView.placeholderImage = [UIImage imageNamed:@"Bitmap"];
        _cycleBannerView.pageControlBottomOffset = -15;
        [_cycleBannerView setBackgroundColor:[UIColor clearColor]];
    }
    return _cycleBannerView;
}

-(NSArray *)bannerArray{
    if (!_bannerArray) {
        _bannerArray = [NSArray array];
    }
    return _bannerArray;
}

- (void)updateWithBannerArray:(NSArray *)bannerArray {
    if (bannerArray.count>1) {
        self.cycleBannerView.autoScroll = YES;
    }else{
        self.cycleBannerView.autoScroll = NO;
    }
    NSMutableArray *imageURLArray = [NSMutableArray array];
    if (bannerArray.count>0) {
        for (NSInteger i = 0; i<bannerArray.count; i++) {
            [imageURLArray addObject:@"Bitmap"];
        }
        self.cycleBannerView.imageURLStringsGroup = imageURLArray;
    }else{
        NSString *imageUrl = @"Bitmap";
        [imageURLArray addObject:imageUrl];
        self.cycleBannerView.localizationImageNamesGroup = imageURLArray;
    }
    self.bannerArray = bannerArray;
}

#pragma mark - SDCycleScrollViewDelegate
- (void)cycleScrollView:(SDCycleScrollView *)cycleScrollView didSelectItemAtIndex:(NSInteger)index{
    if (self.bannerArray == nil||self.bannerArray.count==0 ) {
        return;
    }
    
}

@end
