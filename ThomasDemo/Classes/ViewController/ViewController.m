//
//  ViewController.m
//  RDSysUrlSchemeSessionDemo
//
//  Created by lihui on 2017/1/5.
//  Copyright © 2017年 org.richard. All rights reserved.
//

#import "ViewController.h"

#import "RDPageModel.h"

#import <RDThomas/RDThomas.h>

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, weak) IBOutlet UITableView *tableView;

@property (nonatomic, strong) NSMutableArray<RDPageModel *> *pageDataArr;

@end

@implementation ViewController
//=================================================================
#pragma mark - LifiCircle
//=================================================================
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.pageDataArr = [RDPageModel loadPageDatas:@"RDSysPage"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//=================================================================
#pragma mark - event
//=================================================================
- (IBAction)openWifiOnClick:(id)aSender
{
//    [RDThomas openPage:RDSysPageWifi
//                  completionHandler:^(BOOL aSuccess) {
//                      NSLog(@"open url: %@", aSuccess? @"success": @"failure");
//                  }];
    [RDThomas openPage:@"org.richard.ThomasDemo"
     completionHandler:^(BOOL aSuccess) {
         NSLog(@"open url: %@", aSuccess? @"success": @"failure");
     }];
}

- (IBAction)openBluetoothOnClick:(id)aSender
{
    [RDThomas openPage:RDSysPageBluetooth
                   completionHandler:^(BOOL aSuccess) {
                      NSLog(@"open url: %@", aSuccess? @"success": @"failure");
                  }];
}

- (IBAction)openOwnSettinsOnClick:(id)aSender
{
    [RDThomas openOwnSettingsPageWith:^(BOOL aSuccess) {
        NSLog(@"open url: %@", aSuccess? @"success": @"failure");
    }];
}

//=================================================================
#pragma mark - UITableViewDelegate
//=================================================================
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    RDPageModel *model = self.pageDataArr[indexPath.row];
    NSString *type = model.type;
    
    [RDThomas openPage:type
                  completionHandler:^(BOOL aSuccess) {
                      NSLog(@"open url: %@", aSuccess? @"success": @"failure");
                  }];
}

//=================================================================
#pragma mark - UITableViewDataSource
//=================================================================
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return (nil == self.pageDataArr) ? 0 : self.pageDataArr.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:NSStringFromClass([UITableViewCell class])];
    
    RDPageModel *model = self.pageDataArr[indexPath.row];
    
    cell.textLabel.text = model.title;
    
    return cell;
}

@end
