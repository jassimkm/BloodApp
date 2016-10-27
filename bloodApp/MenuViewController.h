//
//  MenuViewController.h
//  bloodApp
//
//  Created by GlossyMac2 on 27/10/16.
//  Copyright © 2016 Unitybees. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol MenuChildViewControllerDelegate <NSObject>
- (void)moveToAnotherPage:(int)index;
@end
@interface MenuViewController : UIViewController
@property (strong, nonatomic) IBOutlet UICollectionView *menuCollectionView;
@property (assign) id <MenuChildViewControllerDelegate> delegate;
@end
