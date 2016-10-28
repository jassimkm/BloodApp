//
//  LoginViewController.m
//  bloodApp
//
//  Created by GlossyMac2 on 27/10/16.
//  Copyright © 2016 Unitybees. All rights reserved.
//

#import "LoginViewController.h"
@interface LoginViewController ()


@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [_username setupTextFieldWithType:ASTextFieldTypeRound withIconName:@"user_name_icon"];
    [_password setupTextFieldWithType:ASTextFieldTypeRound withIconName:@"password_icon"];
    self.username.layer.cornerRadius = self.username.frame.size.height/2;
    
    self.getStartedButton.layer.cornerRadius = self.getStartedButton.frame.size.height/2;
     self.password.layer.cornerRadius = self.password.frame.size.height/2;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)getStartedAction:(id)sender{
}

- (IBAction)createAccountAction:(id)sender {
}
@end
