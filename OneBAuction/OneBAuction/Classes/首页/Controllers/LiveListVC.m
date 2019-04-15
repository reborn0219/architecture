//
//  LiveListVC.m
//  OneBAuction
//
//  Created by 刘帅 on 2019/4/10.
//  Copyright © 2019 刘帅. All rights reserved.
//

#import "LiveListVC.h"
#import "LiveListCell.h"

@interface LiveListVC ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,retain)UITableView *tableView;
@end

@implementation LiveListVC

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.tableView];
    // Do any additional setup after loading the view.
    
}
-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self setCustomerTitle:@"直播拍卖"];
    [self setNaviBar:2];
    [self.view setBackgroundColor:BackColor];

}
-(void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
}
-(UITableView *)tableView{
    if (!_tableView) {
        
        _tableView = [[UITableView alloc]initWithFrame:CGRectMake(0,k_Height_NavBar,self.view.bounds.size.width, self.view.bounds.size.height-k_Height_NavBar) style:UITableViewStylePlain];
        _tableView.backgroundColor  =BackColor;
        _tableView.delegate = self;
        _tableView.dataSource = self;
        _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        _tableView.estimatedRowHeight = 44;
        _tableView.rowHeight=UITableViewAutomaticDimension;
        [_tableView registerNib:[UINib nibWithNibName:@"LiveListCell" bundle:[NSBundle mainBundle]] forCellReuseIdentifier:@"LiveListCell"];
        
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
    
        LiveListCell * cell = [tableView dequeueReusableCellWithIdentifier:@"LiveListCell"];
        cell.backgroundColor  =BackColor;

        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
   
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{

}


@end
