//
//  OnePriceVC.m
//  OneBAuction
//
//  Created by 刘帅 on 2019/4/6.
//  Copyright © 2019 刘帅. All rights reserved.
//

#import "OnePriceVC.h"
#import "XXPageTabView.h"
#import "PageOneViewController.h"

@interface OnePriceVC ()<XXPageTabViewDelegate>
@property (nonatomic, strong) XXPageTabView *pageTabView;

@end

@implementation OnePriceVC

- (void)viewDidLoad {
    [super viewDidLoad];
    [self creatUI];
}
-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self setCustomerTitle:@"一口价"];
    [self setNaviBar:3];
}
#pragma mark - 初始化UI
-(void)creatUI{
    
    
    
    PageOneViewController *test1 = [self makeVC];
    PageOneViewController *test2 = [self makeVC];
    PageOneViewController *test3 = [self makeVC];
    PageOneViewController *test4 = [self makeVC];
    PageOneViewController *test5 = [self makeVC];
    PageOneViewController *test6 = [self makeVC];
    PageOneViewController *test7 = [self makeVC];
    PageOneViewController *test8 = [self makeVC];
    
    [self addChildViewController:test1];
    [self addChildViewController:test2];
    [self addChildViewController:test3];
    [self addChildViewController:test4];
    [self addChildViewController:test5];
    [self addChildViewController:test6];
    [self addChildViewController:test7];
    [self addChildViewController:test8];
    self.pageTabView = [[XXPageTabView alloc] initWithChildControllers:self.childViewControllers childTitles:@[@"新闻",@"女装",@"手机",@"钱包",@"运动",@"家电",@"数码",@"玩具"]];
    self.pageTabView.frame = CGRectMake(0,k_Height_NavBar, self.view.frame.size.width, self.view.frame.size.height-k_Height_NavBar);
    self.pageTabView.delegate = self;
    //    self.pageTabView.bodyEnableScroll = NO;
    //    self.pageTabView.bodyBounces = NO;
    //    self.pageTabView.tabSize = CGSizeMake(self.view.frame.size.width, 40);
    self.pageTabView.titleStyle = XXPageTabTitleStyleDefault;
    self.pageTabView.indicatorStyle = XXPageTabIndicatorStyleStretch;
//    self.pageTabView.separatorColor = UIColorHex(0xBA0000);
    //    self.pageTabView.minScale = 1.0;
    //    self.pageTabView.selectedTabIndex = 0;
    //    self.pageTabView.selectedTabIndex = -1;
    //    self.pageTabView.selectedTabIndex = 4;
    //    self.pageTabView.maxNumberOfPageItems = 1;
    //    self.pageTabView.maxNumberOfPageItems = 7;
    //    self.pageTabView.tabItemFont = [UIFont systemFontOfSize:18];
    //    self.pageTabView.indicatorHeight = 5;
    self.pageTabView.indicatorWidth = 20;
    //    self.pageTabView.tabBackgroundColor = [UIColor redColor];
    self.pageTabView.unSelectedColor = UIColorHex(0xA6A6A6);
    
    self.pageTabView.selectedColor = UIColorHex(0x222222);
    
    //    self.pageTabView.tabSize = CGSizeMake(self.view.bounds.size.width-30, 0);
    [self.view addSubview:self.pageTabView];
    
}

#pragma mark - XXPageTabViewDelegate
- (void)pageTabViewDidEndChange {
    NSLog(@"#####%d", (int)self.pageTabView.selectedTabIndex);
}

#pragma mark - Event response
- (void)scrollToLast:(id)sender {
    [self.pageTabView setSelectedTabIndexWithAnimation:self.pageTabView.selectedTabIndex-1];
}

- (void)scrollToNext:(id)sender {
    [self.pageTabView setSelectedTabIndexWithAnimation:self.pageTabView.selectedTabIndex+1];
}


#pragma mark - Setter && Getter

- (PageOneViewController *)makeVC {
    
    PageOneViewController *vc = [[PageOneViewController alloc]init];
    
    vc.viewBlock = ^(id  _Nullable data, UIView * _Nullable view, NSInteger index) {
    
        
    };
    return vc;
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
