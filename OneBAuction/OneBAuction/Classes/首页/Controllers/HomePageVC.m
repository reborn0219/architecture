//
//  HomePageVC.m
//  OneBAuction
//
//  Created by 刘帅 on 2019/4/6.
//  Copyright © 2019 刘帅. All rights reserved.
//

#import "HomePageVC.h"
#import "HomePageView.h"
#import "LiveListVC.h"
#import "ZeroAuctionVC.h"

@interface HomePageVC ()
@property (nonatomic, strong)HomePageView * backView;

@end

@implementation HomePageVC

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.backView];
    [self setNaviBar:0];
    LSWeakSelf
    _backView.block = ^(NSInteger index) {
        if (index == 0) {
            LiveListVC * llVC = [[LiveListVC alloc]init];
            weakSelf.hidesBottomBarWhenPushed=YES;
            [weakSelf.navigationController pushViewController:llVC animated:YES];
            weakSelf.hidesBottomBarWhenPushed=NO;

        }else{
            ZeroAuctionVC * zaVC = [[ZeroAuctionVC alloc]init];
            weakSelf.hidesBottomBarWhenPushed=YES;
            [weakSelf.navigationController pushViewController:zaVC animated:YES];
            weakSelf.hidesBottomBarWhenPushed=NO;

        }
    };
    
}
-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
}
-(void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
}

- (HomePageView *)backView{
    if (!_backView) {
        _backView = [[[NSBundle mainBundle] loadNibNamed:@"HomePageView" owner:self options:nil] lastObject];
        [_backView setFrame:CGRectMake(0,k_Height_NavBar, SCREENWIDTH,SCREENHEIGHT-k_Height_NavBar)];
    }
    return _backView;
}

@end
