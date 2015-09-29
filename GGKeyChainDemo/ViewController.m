//
//  ViewController.m
//  GGKeyChainDemo
//
//  Created by __无邪_ on 15/9/29.
//  Copyright © 2015年 __无邪_. All rights reserved.
//

#import "ViewController.h"
#import "GGKeyChainManager.h"
@interface ViewController ()<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *usernameField;
@property (weak, nonatomic) IBOutlet UITextField *passwordField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSString *username = [GGKeyChainManager sharedInstance].username;
    NSString *password = [GGKeyChainManager sharedInstance].password;
    
    NSLog(@"%@ %@",username,password);
    self.usernameField.text = username;
    self.passwordField.text = password;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - delegate

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    NSLog(@"%@",textField.text);
    [[GGKeyChainManager sharedInstance] setUsername:self.usernameField.text password:self.passwordField.text];
    
    return YES;
}




@end
