//
//  LoginViewController.h
//  bloodApp
//
//  Created by GlossyMac2 on 27/10/16.
//  Copyright © 2016 Unitybees. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ASTextField.h"

@interface LoginViewController : UIViewController
@property (weak, nonatomic) IBOutlet ASTextField *username;
@property (weak, nonatomic) IBOutlet ASTextField *password;
@property (weak, nonatomic) IBOutlet UIButton *getStartedButton;
- (IBAction)createAccountAction:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *getStartedAction;

@end
