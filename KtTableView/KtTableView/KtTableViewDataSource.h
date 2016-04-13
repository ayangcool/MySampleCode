//
//  KtTableViewDataSource.h
//  KtTableView
//
//  Created by baidu on 16/4/13.
//  Copyright © 2016年 zxy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol KtTableViewDataSource <UITableViewDataSource>

@optional

- (Class)tableView:(UITableView*)tableView cellClassForObject:(id)object;

@end

@interface KtTableViewDataSource : NSObject<KtTableViewDataSource>

@property (nonatomic, strong) NSMutableArray *sections;  // 二维数组，每个元素都是一个 SectionObject

@end
