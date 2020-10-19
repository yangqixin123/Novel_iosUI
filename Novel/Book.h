//
//  Book.h
//  Novel
//
//  Created by 卫鹏程 on 2019/11/22.
//  Copyright © 2019 卫鹏程. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Book : NSObject

@property(nonatomic,copy)NSString *name;
@property(nonatomic,copy)NSString *icon;
@property(nonatomic,copy)NSString *detail;

+(instancetype)bookWithDict:(NSDictionary *)dict;
-(instancetype)initWithDict:(NSDictionary *)dict;
+ (NSArray *)books;
@end
