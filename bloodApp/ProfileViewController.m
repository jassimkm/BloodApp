//
//  ProfileViewController.m
//  bloodApp
//
//  Created by GlossyMac2 on 27/10/16.
//  Copyright © 2016 Unitybees. All rights reserved.
//

#import "ProfileViewController.h"

@interface ProfileViewController ()
{
    
}
@property (strong, readwrite, nonatomic) UITableView *tableView;

@end

@implementation ProfileViewController
@synthesize delegate;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.tableView = ({
        UITableView *tableView  = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height ) style:UITableViewStylePlain];
        
        if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)
        {
            tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height ) style:UITableViewStylePlain];
            
        }
        
        tableView.separatorColor = [UIColor colorWithRed:150/255.0f green:161/255.0f blue:177/255.0f alpha:1.0f];
        tableView.separatorStyle=UITableViewStylePlain;
        tableView.delegate = self;
        tableView.dataSource = self;
        tableView.opaque = NO;
        tableView.backgroundColor = [UIColor whiteColor];
        tableView.backgroundView = nil;
        //    self.tableView.backgroundColor = [UIColor clearColor];
        tableView.tableHeaderView = ({
            UIView *view;
            if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)
            {
                view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 0, 350)];
            }
            else
            {
                view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 0, 200)];
                
            }
            
            UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, tableView.frame.size.width, view.frame.size.height)];
            
            //  imageView.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin;
            imageView.image = [UIImage imageNamed:@"LogIn1.jpg"];
            imageView.layer.masksToBounds = YES;
            
            UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 75, 0, 75)];
            label.text = @"LOGO";
            
            if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)
            {
                label.font = [UIFont fontWithName:@"OpenSans" size:30];
            }
            else
            {
                label.font = [UIFont fontWithName:@"OpenSans" size:23];
                
            }
            
            
            
            label.backgroundColor = [UIColor clearColor];
            label.textColor = [UIColor whiteColor];
            [label sizeToFit];
            label.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin;
            
            [view addSubview:imageView];
            [view addSubview:label];
            view;
        });
//        tableView.tableFooterView = ({
//            UIView *view;
//            view=[[UIView alloc]initWithFrame:CGRectMake(0, 0, tableView.frame.size.width, 80)];
//            
//            
//            loginButton=[UIButton buttonWithType:UIButtonTypeCustom];
//            
//            
//            NSString *savedValue = [[NSUserDefaults standardUserDefaults]
//                                    stringForKey:@"login"];
//            if ([savedValue isEqualToString:@"login"]) {
//                [loginButton setTitle:@"Log out" forState:UIControlStateNormal];
//            }
//            else
//            {
//                [loginButton setTitle:@"Log in" forState:UIControlStateNormal];
//            }
//            
//            
//            [loginButton setBackgroundImage:[UIImage imageNamed:@"button1.png"] forState:UIControlStateNormal];
//            [loginButton addTarget:self action:@selector(loginAction) forControlEvents:UIControlEventTouchUpInside];
//            //    [loginButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];//set the color this is may be different for iOS 7
//            loginButton.frame=CGRectMake( tableView.frame.size.width/4 - 50 ,10, tableView.frame.size.width/2 - 25, 50); //set some large width to ur title
//            [view addSubview:loginButton];
//            view;
//        });
        tableView;
        
    });
    [self.view addSubview:self.tableView];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    cell.backgroundColor = [UIColor clearColor];
    cell.textLabel.textColor = [UIColor lightGrayColor];
    
    
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)
    {
        cell.textLabel.font = [UIFont fontWithName:@"OpenSans" size:24];
    }
    else
    {
        cell.textLabel.font = [UIFont fontWithName:@"OpenSans" size:17];
        
    }
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
    {
        
        
        
        [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    }
    

#pragma mark -
#pragma mark UITableView Datasource

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)
    {
        return 60;
    }
    else
    {
        return 40;
    }
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)sectionIndex
{
    return 8;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    
    NSArray *titles = @[@"HOME",@"DEALS", @"BOOK MY SIM", @"CONTACT US",@"MY ACCOUNT",@"SIM TARIFF",@"ABOUT US",@"FAQ"];
    
    cell.indentationLevel=2;
    
    cell.textLabel.text = titles[indexPath.row];
    return cell;
}



@end
