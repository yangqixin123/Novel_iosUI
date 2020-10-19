//
//  ViewController.m
//  Novel
//
//  Created by 卫鹏程 on 2019/11/22.
//  Copyright © 2019 卫鹏程. All rights reserved.
//

#import "ViewController.h"
#import "DetailController.h"
#import "Book.h"
@interface ViewController ()
@property(nonatomic,strong)NSArray *books;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.rowHeight=90;
    self.navigationItem.title=@"图书列表";
  
}

-(NSArray *)books{
    if (!_books) {
        _books = [Book books];
    }
    return _books;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // 获取跳转的目的控制器
    UIViewController *vc = segue.destinationViewController;
    
    // 判断是否是目的控制器
    if ([vc isKindOfClass:[DetailController class]]) {
        DetailController *detailVc = (DetailController *)vc;
        // 获取点击行所在的索引
        NSIndexPath *Path = [self.tableView indexPathForSelectedRow];
       // 选中行的模型
        Book *book = self.books[Path.row];
        detailVc.book = book;
    }
    
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{

    [self performSegueWithIdentifier:@"two" sender:self];
    

}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{

    return self.books.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *ID=@"book";
   UITableViewCell *cell= [tableView dequeueReusableHeaderFooterViewWithIdentifier:ID];
    if (cell==nil) {
        cell= [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
    }
    Book *book=self.books[indexPath.row];
    cell.textLabel.text=book.name;
   cell.imageView.image=[UIImage imageNamed:book.icon];
    cell.accessoryType=UITableViewCellAccessoryDisclosureIndicator;
    

    return cell;
}

@end
