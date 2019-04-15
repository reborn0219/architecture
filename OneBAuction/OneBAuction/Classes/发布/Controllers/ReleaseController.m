//
//  ReleaseController.m
//  OneBAuction
//
//  Created by 刘帅 on 2019/4/6.
//  Copyright © 2019 刘帅. All rights reserved.
//

#import "ReleaseController.h"

@interface ReleaseController ()
@property (nonatomic,strong)ReleaseView *backView;

@end

@implementation ReleaseController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setNaviBar:4];
    [self setCustomerTitle:@"发布分享"];
    [self.view addSubview:self.backView];
    
}
- (void)backAction{
    [self dismissViewControllerAnimated:YES completion:nil];
    
}
-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
}
-(void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
}

-(ReleaseView *)backView{
    if (!_backView) {
        _backView = [[[NSBundle mainBundle]loadNibNamed:@"ReleaseView" owner:self options:nil] firstObject];
        [_backView setFrame:CGRectMake(0,k_Height_NavBar,SCREENWIDTH,SCREENHEIGHT-k_Height_NavBar)];
    }
    return _backView;
}


@end
