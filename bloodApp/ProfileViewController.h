//
//  ProfileViewController.h
//  bloodApp
//
//  Created by GlossyMac2 on 27/10/16.
//  Copyright © 2016 Unitybees. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol profileChildViewControllerDelegate <NSObject>
- (void)moveToAnotherPage;
@end
@interface ProfileViewController : UIViewController
@property (nonatomic, strong) UINavigationController *navigationControllerProfile;
@property (assign) id <profileChildViewControllerDelegate> delegate;

@end
