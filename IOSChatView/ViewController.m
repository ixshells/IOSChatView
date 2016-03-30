//
//  ViewController.m
//  IOSChatView
//
//  Created by ixshells on 16/3/25.
//  Copyright © 2016年 ixshells. All rights reserved.
//

#import "ViewController.h"
#import "NSObject+NSLayoutConstraint.h"
#import "UIView+NSLayoutConstraint.h"

static const CGFloat notContentBottomMargin = 20/2.;

@interface ViewController ()<UITableViewDataSource, UITableViewDelegate>
{
    NSArray* _resultArray;
}

@property(nonatomic, strong)UITableView* tableView;
@end


@implementation ViewController


-(UITableView *)tableView
{
    if(nil == _tableView)
    {
        _tableView = [[UITableView alloc] init];
    }
    return _tableView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"与妹子聊天中。。";
    
    _resultArray = [NSArray arrayWithObjects:@"空调移机fdsaffdsaklfdskjfl;dsjfkdsjfkldsjfkldsajfkldsfjdklsjfds", @"二手空调二手空调二手空调二手空调二手空调二手空调二手空调二手空调二手空调二手空调二手空调二手空调二手空调二手空调二手空调二手空调二手空调二手空调二手空调", @"空调回收", @"空调维修", @"汽车空调清洗", @"水温空调设计", @"空调回收", @"空调维修", @"汽车空调清洗", @"水温空调设计", @"空调回收", @"空调维修", @"汽车空调清洗", @"水温空调设计", @"空调回收", @"空调维修", @"汽车空调清洗", @"水温空调设计", @"空调回收", @"空调维修", @"汽车空调清洗", @"水温空调设计", @"空调回收", @"空调维修", @"汽车空调清洗", @"水温空调设计",  nil];
    
    self.view.backgroundColor = [UIColor cyanColor];
    
    
    CGRect frame = self.view.frame;
    if (!self.navigationController.navigationBar.hidden){
        frame.size.height -= (self.navigationController.navigationBar.frame.size.height);
//        frame.origin.y += (self.navigationController.navigationBar.frame.size.height);
    }
    if (!self.prefersStatusBarHidden) {
        frame.size.height -= [[UIApplication sharedApplication]statusBarFrame].size.height;
        frame.origin.y += [[UIApplication sharedApplication]statusBarFrame].size.height;
    }

    self.tableView = [[UITableView alloc]initWithFrame:frame
                                                 style:UITableViewStyleGrouped];
    [self.view addSubview:self.tableView];
    
    self.automaticallyAdjustsScrollViewInsets = NO;
    CGRect fr = self.tableView.frame;
    self.tableView.frame = fr;
    self.tableView.backgroundColor = [UIColor cyanColor];
    self.tableView.estimatedRowHeight = 100;
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    //self.tableView.rowHeight = UITableViewAutomaticDimension;
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
    
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _resultArray.count;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"cell"
                                                            forIndexPath:indexPath];
    
    for (UIView* subv in cell.contentView.subviews) {
        [subv removeFromSuperview];
    }
    
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.accessoryType = UITableViewCellAccessoryNone;
    cell.userInteractionEnabled = YES;
    cell.backgroundColor = [UIColor grayColor];
    
    
    UIView* view = [[UIView alloc] init];
    [cell.contentView addSubview:view];
    view.translatesAutoresizingMaskIntoConstraints = NO;
    view.backgroundColor = [UIColor yellowColor];
    view.layer.cornerRadius = 3;
    [view topToSuperView];
    [view bottomToSuperView:notContentBottomMargin];
    [view centerXToSuperView];;
    
    UILabel* label;
    
    label = [[UILabel alloc]init];
    label.translatesAutoresizingMaskIntoConstraints = NO;
    [view addSubview:label];
    label.backgroundColor = [UIColor clearColor];
    [label topToSuperView:5];
    [label bottomToSuperView:5];
    [label leadingToSuperView:5];
    [label trailingToSuperView:5];
    label.textColor = [UIColor whiteColor];
    label.numberOfLines = 0;
    label.text = _resultArray[indexPath.row];
    label.textColor = [UIColor blackColor];
    
    
    
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return UITableViewAutomaticDimension;
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    //  return 20.;
    return 0.;
}

-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return 0.;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
