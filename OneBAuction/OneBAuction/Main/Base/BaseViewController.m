//
//  BaseViewController.m
//  OneBAuction
//
//  Created by 刘帅 on 2019/4/6.
//  Copyright © 2019 刘帅. All rights reserved.
//

#import "BaseViewController.h"
#import "NaviBarView.h"

@interface BaseViewController ()
@property (nonatomic, retain) UIView* overlayView;
@property (nonatomic, retain) UIView* bgview;
@property (nonatomic, retain) UIActivityIndicatorView *loadingIndicator;
@property (nonatomic, retain) UIImageView *loadingImageView;
@property (nonatomic, retain) NaviBarView * navibarView;
@end

@implementation BaseViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.navigationController setNavigationBarHidden:YES];
    if (iOS7) {
        self.automaticallyAdjustsScrollViewInsets = NO;
    }
    [self.view addSubview:self.navibarView];

    LSWeakSelf
    _navibarView.block = ^(NSInteger index) {
        if (index == 1) {
            [weakSelf backAction];
        }
    };
    self.view.backgroundColor = ViewController_BackGround;
    
    //导航栏 返回 按钮
    NSArray *viewControllers = self.navigationController.viewControllers;
    
    if (viewControllers.count > 1){
        
        [self.navibarView.backBtn setHidden:NO];
        
        //返回的手势
        UISwipeGestureRecognizer *gesture = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(backSweepGesture:)];
        gesture.direction = UISwipeGestureRecognizerDirectionRight;
        [self.view addGestureRecognizer:gesture];
        
        
    }else{
        
        [self.navibarView.backBtn setHidden:YES];

    }
    
    
}


- (void)backSweepGesture:(UISwipeGestureRecognizer*)gesture{
    
    [self.navigationController popViewControllerAnimated:YES];
    
}

#pragma mark - Lazy loading
-(NaviBarView *)navibarView{
    if (!_navibarView) {
        _navibarView = [[[NSBundle mainBundle]loadNibNamed:@"NaviBarView" owner:self options:nil] lastObject];
        [_navibarView setFrame:CGRectMake(0, 0, SCREENWIDTH, k_Height_NavBar)];
    }
    return _navibarView;
}
#pragma mark Action

- (void)backAction{
    
    [self.navigationController popViewControllerAnimated:YES];
}


-(void)setCustomerTitle:(NSString *)title{
    
    _navibarView.titleLb.text = title;
   
    
}

@end
