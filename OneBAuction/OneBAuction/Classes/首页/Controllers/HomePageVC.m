//
//  HomePageVC.m
//  OneBAuction
//
//  Created by 刘帅 on 2019/4/6.
//  Copyright © 2019 刘帅. All rights reserved.
//

#import "HomePageVC.h"
#import "HomePageView.h"

@interface HomePageVC ()
@property (nonatomic, strong)HomePageView * backView;

@end

@implementation HomePageVC

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.backView];
    _backView.block = ^(NSInteger index) {
        
    };
    
}
- (HomePageView *)backView{
    if (!_backView) {
        _backView = [[[NSBundle mainBundle] loadNibNamed:@"HomePageView" owner:self options:nil] lastObject];
        [_backView setFrame:CGRectMake(0,k_Height_NavBar, SCREENWIDTH,SCREENHEIGHT)];
    }
    return _backView;
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
