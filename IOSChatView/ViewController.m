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
#import "UITableView+FDTemplateLayoutCell.h"
#import "ChatInputTool.h"

#define RGB_A(r, g, b, a) ([UIColor colorWithRed:(r)/255.0f \
green:(g)/255.0f \
blue:(b)/255.0f \
alpha:(a)/255.0f])

#define RGB(r, g, b) RGB_A(r, g, b, 255)


@interface TestCell : UITableViewCell
{
    UILabel *_label;
}
-(void)setLabelText : (NSString *)text;
-(void)clearContent;
-(void)addlabel;
@end

@implementation TestCell

-(void)clearContent
{
    for (UIView* subv in self.contentView.subviews) {
        [subv removeFromSuperview];
    }
}

-(void)setLabelText:(NSString *)text
{
    [self label].text = @"right你好，恭喜你已被我方录用！联系人：鲁先生 联系电话：189 3888 6293 工作时间：2015年12月8日(周日) 09:00 工作地址：成都市青羊区红河路富鸿大厦2楼 备注：请带好身份证和健康证。";
}

-(UILabel *)label
{
    if(nil == _label)
    {
        
        _label = [[UILabel alloc] init];
        _label.translatesAutoresizingMaskIntoConstraints = NO;
        [self.contentView addSubview:_label];
        
        
        [_label topToSuperView:5];
        [_label bottomToSuperView:5];
        [_label leadingToSuperView:50];
        [_label trailingToSuperView:50];
        
        _label.numberOfLines = 0;
        _label.textColor = [UIColor blackColor];
        _label.backgroundColor = [UIColor cyanColor];
        _label.text = @"right你好，恭喜你已被我方录用！联系人：鲁先生 联系电话：189 3888 6293 工作时间：2015年12月8日(周日) 09:00 工作地址：成都市青羊区红河路富鸿大厦2楼 备注：请带好身份证和健康证。";
        
    }
    
    return _label;
}

-(void)addlabel
{
    [self.contentView addSubview:self.label];
    
    [_label topToSuperView:5];
    [_label bottomToSuperView:5];
    [_label leadingToSuperView:50];
    [_label trailingToSuperView:50];
    
     _label.numberOfLines = 0;
}

-(instancetype)init
{
    self = [super init];
    
    [self label];
    
    return self;
}

@end

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

-(UIColor *)backColor
{
    return [UIColor colorWithRed:((float)((0xF5F7FA & 0xFF0000) >> 16))/255.0
                    green:((float)((0xF5F7FA & 0xFF00) >> 8))/255.0
                     blue:((float)(0xF5F7FA & 0xFF))/255.0 alpha:1.0f];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"与妹子聊天中。。";
    
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    CGRect frame = self.view.frame;
    if (!self.navigationController.navigationBar.hidden){
        frame.size.height -= (self.navigationController.navigationBar.frame.size.height);
        frame.origin.y += (self.navigationController.navigationBar.frame.size.height);
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
    self.tableView.backgroundColor = [self backColor];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    [self.tableView registerClass:[TestCell class] forCellReuseIdentifier:@"cell"];
    
    
    [self scrollTableViewToBottom:NO];
    
    ChatTextTool* inputTool = [[ChatTextTool alloc] init];
    [self.view addSubview:inputTool];
    inputTool.translatesAutoresizingMaskIntoConstraints = NO;
    [inputTool bottomToSuperView];
    [inputTool leadingToSuperView];
    [inputTool trailingToSuperView];
    [inputTool heightEqualTo:60];
    inputTool.backgroundColor = RGB(112, 206, 250);

}


- (void)scrollTableViewToBottom:(BOOL)animated {
    UITableView *tableView = self.tableView;
    NSInteger sections = tableView.numberOfSections;
    if (sections) {
        NSInteger rows = [tableView numberOfRowsInSection:sections - 1];
        if (rows) {
            NSIndexPath *indexPath = [NSIndexPath indexPathForRow:rows - 1 inSection:sections - 1];
            NSLog(@"scrollTableViewToBottom indexPath ======%@",indexPath);
            [tableView scrollToRowAtIndexPath:indexPath atScrollPosition:UITableViewScrollPositionBottom animated:animated];
        }
    }
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    TestCell* cell = [tableView dequeueReusableCellWithIdentifier:@"cell"
                                                            forIndexPath:indexPath];
    
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.accessoryType = UITableViewCellAccessoryNone;
    cell.userInteractionEnabled = YES;
    
    [self configureCell:cell atIndexPath:indexPath];
    
    return cell;
}

- (void)configureCell:(TestCell *)cell atIndexPath:(NSIndexPath *)indexPath {
    cell.fd_enforceFrameLayout = NO;
   
    
    [cell clearContent];
    [cell addlabel];
    
    [cell setLabelText:@"right你好，恭喜你已被我方录用！联系人：鲁先生 联系电话：189 3888 6293 工作时间：2015年12月8日(周日) 09:00 工作地址：成都市青羊区红河路富鸿大厦2楼 备注：请带好身份证和健康证。"];
}


-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return [tableView fd_heightForCellWithIdentifier:@"cell" cacheByIndexPath:indexPath configuration:^(TestCell *cell) {
        [self configureCell:cell atIndexPath:indexPath];
    }];
    
    return UITableViewAutomaticDimension;
    
    return 200;
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 0.;
}

-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return 0.;
}

-(CGFloat)tableView:(UITableView *)tableView estimatedHeightForHeaderInSection:(NSInteger)section
{
    return 0;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
