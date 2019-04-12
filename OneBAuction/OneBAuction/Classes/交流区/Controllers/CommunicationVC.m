//
//  CommunicationVC.m
//  OneBAuction
//
//  Created by 刘帅 on 2019/4/6.
//  Copyright © 2019 刘帅. All rights reserved.
//

#import "CommunicationVC.h"
#import "CommunicationItemCell.h"
#import "CommunicationCell.h"

@interface CommunicationVC ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,retain)UITableView *tableView;
@property(nonatomic,retain)UIView *headerView;
@end

@implementation CommunicationVC

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setCustomerTitle:@"大家说"];
    [self setNaviBar:3];
    [self.view addSubview:self.tableView];
    self.tableView.tableHeaderView = self.headerView;
}
-(UIView *)headerView{
    if (!_headerView) {
        _headerView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, SCREENWIDTH, 240)];
        UIImageView * imgV = [[UIImageView alloc]initWithFrame:_headerView.bounds];
        [_headerView addSubview:imgV];
        
    }
    return _headerView;
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
        [_tableView registerNib:[UINib nibWithNibName:@"CommunicationCell" bundle:[NSBundle mainBundle]] forCellReuseIdentifier:@"CommunicationCell"];
        [_tableView registerNib:[UINib nibWithNibName:@"CommunicationItemCell" bundle:[NSBundle mainBundle]] forCellReuseIdentifier:@"CommunicationItemCell"];
        
    }
    return _tableView;
}

#pragma mark - TableViewDelegate
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 2;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if (section==0) {
        return 1;
    }
    return 10;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.section==0) {
        CommunicationItemCell * cell = [tableView dequeueReusableCellWithIdentifier:@"CommunicationItemCell"];
        cell.backgroundColor  =BackColor;
        
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }else{
        CommunicationCell * cell = [tableView dequeueReusableCellWithIdentifier:@"CommunicationCell"];
        cell.backgroundColor  =BackColor;
        
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }
   
    
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
