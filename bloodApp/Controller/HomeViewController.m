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

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)initViewControllers {
    MenuViewController *MenuViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"menuController"];
    ProfileViewController *profileViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"profileController"];
    [self addChildViewController:MenuViewController];
    [self addChildViewController:profileViewController];
    _viewControllers = [[NSMutableArray alloc] init];
    [_viewControllers addObject:MenuViewController];
    [_viewControllers addObject:profileViewController];
    GFPageSlider *pageSlider = [[GFPageSlider alloc] initWithFrame:CGRectMake(0, 64, kSelfViewWidth, kSelfViewHeight - 64)
                                                      numberOfPage:2
                                                   viewControllers:_viewControllers
                                                  menuButtonTitles:@[@"Features", @"Profile"]];
    
    pageSlider.menuHeight = 40.0f;
    pageSlider.menuNumberPerPage = 2;
    pageSlider.indicatorLineColor = [UIColor blueColor];
    [self.view addSubview:pageSlider];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
