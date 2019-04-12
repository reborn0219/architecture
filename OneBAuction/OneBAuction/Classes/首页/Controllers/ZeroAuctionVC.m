//
//  ZeroAuctionVC.m
//  OneBAuction
//
//  Created by 刘帅 on 2019/4/10.
//  Copyright © 2019 刘帅. All rights reserved.
//

#import "ZeroAuctionVC.h"
#import "ZeroAuctionCell.h"
#import "ZeroAuctionHeaderView.h"
@interface ZeroAuctionVC ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,retain)UITableView *tableView;
@property(nonatomic,retain)ZeroAuctionHeaderView *headerView;

@end

@implementation ZeroAuctionVC

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.headerView];
    [self.view addSubview:self.tableView];
    // Do any additional setup after loading the view.
}
-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self setNaviBar:1];
    [self setCustomerTitle:@"0元拍"];
    [self.view setBackgroundColor:[UIColor whiteColor]];
}
-(void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
}
-(ZeroAuctionHeaderView *)headerView{
    if (!_headerView) {
        _headerView = [[[NSBundle mainBundle]loadNibNamed:@"ZeroAuctionHeaderView" owner:self options:nil]lastObject];
        [_headerView setFrame:CGRectMake(0, k_Height_NavBar,SCREENWIDTH,240)];
        
    }
    return _headerView;
}
-(UITableView *)tableView{
    if (!_tableView) {
        
        _tableView = [[UITableView alloc]initWithFrame:CGRectMake(0,k_Height_NavBar+250,self.view.bounds.size.width, self.view.bounds.size.height-k_Height_NavBar-250) style:UITableViewStylePlain];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        _tableView.estimatedRowHeight = 44;
        _tableView.rowHeight=UITableViewAutomaticDimension;
        [_tableView registerNib:[UINib nibWithNibName:@"ZeroAuctionCell" bundle:[NSBundle mainBundle]] forCellReuseIdentifier:@"ZeroAuctionCell"];
        
    }
    return _tableView;
}

#pragma mark - TableViewDelegate
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 10;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    ZeroAuctionCell * cell = [tableView dequeueReusableCellWithIdentifier:@"ZeroAuctionCell"];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    
    return cell;
    
    
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
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
