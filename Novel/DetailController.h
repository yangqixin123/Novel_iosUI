//
//  DetailController.h
//  Novel
//
//  Created by 卫鹏程 on 2019/11/22.
//  Copyright © 2019 卫鹏程. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Book.h"

@interface DetailController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *bookname;
@property (weak, nonatomic) IBOutlet UITextView *introduce;
@property (nonatomic,strong) Book *book;

@end
