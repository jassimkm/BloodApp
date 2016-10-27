//
//  HomeViewController.m
//  bloodApp
//
//  Created by GlossyMac2 on 27/10/16.
//  Copyright © 2016 Unitybees. All rights reserved.
//

#import "HomeViewController.h"
#import "GFPageSlider.h"
#import "ProfileViewController.h"
#import "MenuViewController.h"

@interface HomeViewController ()
@property (strong, nonatomic) NSMutableArray *viewControllers;

@end
#define kSelfViewWidth self.view.frame.size.width
#define kSelfViewHeight self.view.frame.size.height
@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self initViewControllers];
    
   

}

- (void) parentMethodThatChildCanCall
{
    //do thing
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)initViewControllers {
    MenuViewController *MenuViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"menuController"];
    ProfileViewController *profileViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"profileController"];
    profileViewController.navigationControllerProfile = self.navigationController;
    MenuViewController.navigationControllerMenu = self.navigationController;
    MenuViewController.delegate = self;
    [self addChildViewController:MenuViewController];
    [self addChildViewController:profileViewController];
    _viewControllers = [[NSMutableArray alloc] init];
    [_viewControllers addObject:MenuViewController];
    [_viewControllers addObject:profileViewController];
    GFPageSlider *pageSlider = [[GFPageSlider alloc] initWithFrame:CGRectMake(0, 64, kSelfViewWidth, kSelfViewHeight - 64)
                                                      numberOfPage:2
                                                   viewControllers:_viewControllers
                                                  menuButtonTitles:@[@"Features", @"Profile"]];
    
    pageSlider.menuHeight = 44.0f;
    pageSlider.menuNumberPerPage = 2;
    
    
    pageSlider.indicatorLineColor = [UIColor whiteColor];
    [self.view addSubview:pageSlider];
}
- (void)moveToAnotherPage{
    NSLog(@"The delegate is working");
}

@end
