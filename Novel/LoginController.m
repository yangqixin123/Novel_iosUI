//
//  LoginController.m
//  Novel
//
//  Created by 卫鹏程 on 2019/11/23.
//  Copyright © 2019 卫鹏程. All rights reserved.
//

#import "LoginController.h"

@interface LoginController ()
- (IBAction)login:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *password;
@property (weak, nonatomic) IBOutlet UITextField *username;

@end

@implementation LoginController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)login:(id)sender {
    //获取用户名
    NSString *username=self.username.text;
    //获取密码
    NSString *password=self.password.text;
    //判断
    if([username isEqualToString:@""]||[password isEqualToString:@""]){
        [self showMessage:@"用户名或密码不能为空"];
    }
    else if(![username isEqualToString:@"admin"]||![password isEqualToString:@"123456"]){
        [self showMessage:@"用户名或密码错误"];
    }
    else if([username isEqualToString:@"admin"]&&[password isEqualToString:@"123456"]){
        [self performSegueWithIdentifier:@"one" sender:self];
    }
}

-(void)showMessage:(NSString *)message{
    UIAlertController *alertC=[UIAlertController alertControllerWithTitle:nil message:message preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *certain=[UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:nil];
    [alertC addAction:certain];
    [self presentViewController:alertC animated:YES completion:nil];
}
@end
