//
//  KtMainTableViewDataSource.m
//  KtTableView
//
//  Created by baidu on 16/4/13.
//  Copyright © 2016年 zxy. All rights reserved.
//

#import "KtMainTableViewDataSource.h"
#import "KtMainTableViewCell.h"

#import "KtTableViewSectionObject.h" // 这个实际使用时应该是对应的子类
#import "KtTableViewBaseItem.h" // 这个实际使用时应该是对应的子类

@implementation KtMainTableViewDataSource

- (instancetype)init
{
    self = [super init];
    if (self) {
        KtTableViewSectionObject *firstSectionObject = [[KtTableViewSectionObject alloc] initWithItemArray:[NSMutableArray arrayWithObjects:
                                                                                                 [[KtTableViewBaseItem alloc] initWithImage:nil Title:@"第一条消息" SubTitle:nil AccessoryImage:nil],
                                                                                                 [[KtTableViewBaseItem alloc] initWithImage:nil Title:@"第二条消息" SubTitle:nil AccessoryImage:nil],
                                                                                                 [[KtTableViewBaseItem alloc] initWithImage:nil Title:@"第三条消息" SubTitle:nil AccessoryImage:nil],
                                                                                                 [[KtTableViewBaseItem alloc] initWithImage:nil Title:@"第四条消息" SubTitle:nil AccessoryImage:nil],
                                                                                                 [[KtTableViewBaseItem alloc] initWithImage:nil Title:@"第五条消息" SubTitle:nil AccessoryImage:nil],
                                                                                                  nil]];
        self.sections = [NSMutableArray arrayWithObject: firstSectionObject];
    }
    return self;
}

- (Class)tableView:(UITableView *)tableView cellClassForObject:(id)object {
    return [KtMainTableViewCell class];
}

@end
