//
//  Book.m
//  Novel
//
//  Created by 卫鹏程 on 2019/11/22.
//  Copyright © 2019 卫鹏程. All rights reserved.
//

#import "Book.h"
@interface Book()

@property (nonatomic,copy)NSArray *bookArray;

@end

@implementation Book
+ (instancetype)bookWithDict:(NSDictionary *)dict{
      return [[self alloc]initWithDict:dict];
    }
- (instancetype)initWithDict:(NSDictionary *)dict{
    if (self=[super init]) {
        [self setValuesForKeysWithDictionary:dict];

    }
    return self;
}
+ (NSArray *)books
{
    NSString *path = [[NSBundle mainBundle]pathForResource:@"book.plist" ofType:nil];
    // 获取数组中的元素
    NSArray *arr = [NSArray arrayWithContentsOfFile:path];
    NSMutableArray *mutableArray=[NSMutableArray array];
    for (NSDictionary *dic in arr) {
        [mutableArray addObject:[Book bookWithDict:dic]];
    }
    return mutableArray;
}



@end
