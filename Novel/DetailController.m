//
//  DetailController.m
//  Novel
//
//  Created by 卫鹏程 on 2019/11/22.
//  Copyright © 2019 卫鹏程. All rights reserved.
//

#import "DetailController.h"
#import "Book.h"
@implementation DetailController

-(void)viewDidLoad{
    self.bookname.text = self.book.name;
    self.introduce.text=self.book.detail;

    self.navigationItem.title=@"";
    
}

@end
