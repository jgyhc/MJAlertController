//
//  MJViewController.m
//  MJAlertController
//
//  Created by jgyhc on 05/14/2019.
//  Copyright (c) 2019 jgyhc. All rights reserved.
//

#import "MJViewController.h"
#import "MJTextAlertController.h"
#import "MJTextFieldViewController.h"

@interface MJViewController ()<UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic, strong) NSArray * datas;
@end

@implementation MJViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    _datas = @[@"带标题带两个按钮", @"不带标题带两个按钮", @"带标题带一个按钮", @"带标题带多个按钮", @"不带标题带多个按钮", @"定义了按钮的样式", @"textfield"];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _datas.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"UITableViewCell" forIndexPath:indexPath];
    cell.textLabel.text = _datas[indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row == 0) {
        MJTextAlertController *alertContrller = [[MJTextAlertController alloc] initWithTitle:@"阿斯达" content:@"阿斯达阿斯达多阿达啊啊大叔阿斯达阿斯达多阿达啊啊大叔阿斯达阿斯达多阿达啊啊大叔阿斯达阿斯达多阿达啊啊大叔阿斯达阿斯达多阿达啊啊大叔阿斯达阿斯达多阿达啊啊大叔阿斯达阿斯达多阿达啊啊大叔" buttons:@[@"取消", @"确定"] tapBlock:^(MJAlertController * _Nonnull controller, NSString * _Nonnull title, NSInteger buttonIndex) {
            NSLog(@"点击了%@", title);
        }];
        [self presentViewController:alertContrller animated:YES completion:nil] ;
    }
    if (indexPath.row == 1) {
        MJTextAlertController *alertContrller = [[MJTextAlertController alloc] initWithTitle:nil content:@"阿斯达阿斯达多阿达啊啊大叔阿斯达阿斯达多阿达啊啊大叔阿斯达阿斯达多阿达啊啊大叔阿斯达阿斯达多阿达啊啊大叔阿斯达阿斯达多阿达啊啊大叔阿斯达阿斯达多阿达啊啊大叔阿斯达阿斯达多阿达啊啊大叔" buttons:@[@"取消", @"确定"] tapBlock:^(MJAlertController * _Nonnull controller, NSString * _Nonnull title, NSInteger buttonIndex) {
            NSLog(@"点击了%@", title);
        }];
        [self presentViewController:alertContrller animated:YES completion:nil] ;
    }
    
    if (indexPath.row == 2) {
        MJTextAlertController *alertContrller = [[MJTextAlertController alloc] initWithTitle:@"阿斯达" content:@"阿斯达阿斯达多阿达啊啊大叔阿斯达阿斯达多阿达啊啊大叔阿斯达阿斯达多阿达啊啊大叔阿斯达阿斯达多阿达啊啊大叔阿斯达阿斯达多阿达啊啊大叔阿斯达阿斯达多阿达啊啊大叔阿斯达阿斯达多阿达啊啊大叔" buttons:@[@"确定"] tapBlock:^(MJAlertController * _Nonnull controller, NSString * _Nonnull title, NSInteger buttonIndex) {
            NSLog(@"点击了%@", title);
        }];
        [self presentViewController:alertContrller animated:YES completion:nil] ;
    }
    if (indexPath.row == 3) {
        MJTextAlertController *alertContrller = [[MJTextAlertController alloc] initWithTitle:@"阿斯达" content:@"阿斯达阿斯达多阿达啊啊大叔阿斯达阿斯达多阿达啊啊大叔阿斯达阿斯达多阿达啊啊大叔阿斯达阿斯达多阿达啊啊大叔阿斯达阿斯达多阿达啊啊大叔阿斯达阿斯达多阿达啊啊大叔阿斯达阿斯达多阿达啊啊大叔" buttons:@[@"取消", @"确定", @"还有谁？"] tapBlock:^(MJAlertController * _Nonnull controller, NSString * _Nonnull title, NSInteger buttonIndex) {
            NSLog(@"点击了%@", title);
        }];
        [self presentViewController:alertContrller animated:YES completion:nil] ;
    }
    if (indexPath.row == 4) {
        MJTextAlertController *alertContrller = [[MJTextAlertController alloc] initWithTitle:nil content:@"阿斯达阿斯达多阿达啊啊大叔阿斯达阿斯达多阿达啊啊大叔阿斯达阿斯达多阿达啊啊大叔阿斯达阿斯达多阿达啊啊大叔阿斯达阿斯达多阿达啊啊大叔阿斯达阿斯达多阿达啊啊大叔阿斯达阿斯达多阿达啊啊大叔" buttons:@[@"取消", @"确定", @"嘻嘻嘻"] tapBlock:^(MJAlertController * _Nonnull controller, NSString * _Nonnull title, NSInteger buttonIndex) {
            NSLog(@"点击了%@", title);
        }];
        [self presentViewController:alertContrller animated:YES completion:nil] ;
    }
    if (indexPath.row == 5) {
        MJTextAlertController *alertContrller = [[MJTextAlertController alloc] initWithTitle:@"阿斯达" content:@"阿斯达阿斯达多阿达啊啊大叔阿斯达阿斯达多阿达啊啊大叔阿斯达阿斯达多阿达啊啊大叔阿斯达阿斯达多阿达啊啊大叔阿斯达阿斯达多阿达啊啊大叔阿斯达阿斯达多阿达啊啊大叔阿斯达阿斯达多阿达啊啊大叔" buttons:@[@{
                                                                                                                                                                                                                        MJAlertControllerButtonTitleKey:@"取消",
                                                                                                                                                                                                                MJAlertControllerButtonTextColorKey:[UIColor redColor], MJAlertControllerButtonFontKey:[UIFont boldSystemFontOfSize:20]}, @"确定"] tapBlock:^(MJAlertController * _Nonnull controller, NSString * _Nonnull title, NSInteger buttonIndex) {
            NSLog(@"点击了%@", title);
        }];
        [self presentViewController:alertContrller animated:YES completion:nil] ;
    }
    if (indexPath.row == 6) {
        MJTextFieldViewController *viewController = [[MJTextFieldViewController alloc] initWithTitle:@"大声道" placeholder:@"a阿达" buttons:@[@"确定"] tapBlock:^(MJAlertController * _Nonnull controller, NSString * _Nonnull title, NSInteger buttonIndex) {
            NSLog(@"点击了%@", title);
        }];
        [self presentViewController:viewController animated:YES completion:nil] ;
    }
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
