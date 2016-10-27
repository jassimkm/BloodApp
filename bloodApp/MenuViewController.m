//
//  MenuViewController.m
//  bloodApp
//
//  Created by GlossyMac2 on 27/10/16.
//  Copyright © 2016 Unitybees. All rights reserved.
//

#import "MenuViewController.h"
#import "MenuCollectionViewCell.h"

@interface MenuViewController () <UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout>
{
    NSMutableArray *imagesArray,*titleArray;
}
@end

@implementation MenuViewController
@synthesize delegate;


// to call parent method:
//  [self.delegate parentMethodThatChildCanCall];
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [super viewDidLoad];
    self.menuCollectionView.delegate=self;
    self.menuCollectionView.dataSource=self;
    imagesArray=[[NSMutableArray alloc]initWithObjects:@"rental4.png",@"Adventure4.png",@"hostels4.png",@"wellness4.png",@"shopping4.png",@"flights4.png", nil];
    titleArray=[[NSMutableArray alloc]initWithObjects:@"Rental Cars",@"Adventure",@"Hotels",@"Wellness",@"Shopping",@"Flights", nil];

    
    [self.delegate moveToAnotherPage:1];
}
- (void)viewWillAppear:(BOOL)animated{
     [super viewDidLoad];
    [self.delegate moveToAnotherPage:2];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 6;
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    MenuCollectionViewCell *cell=[collectionView dequeueReusableCellWithReuseIdentifier:@"menuCell" forIndexPath:indexPath];
    
    cell.iconImageVIew.image=[UIImage imageNamed:[imagesArray objectAtIndex:indexPath.row]];
    cell.menuTitle.text=[titleArray objectAtIndex:indexPath.row];
    return cell;
}

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    //    [self performSegueWithIdentifier:@"dealsSegue" sender:self];
}


- (CGSize)collectionView:(UICollectionView *)collectionView
                  layout:(UICollectionViewLayout *)collectionViewLayout
  sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    CGFloat screenWidth = screenRect.size.width;
    
    CGFloat cellWidth,cellHeight;
    if( self.traitCollection.horizontalSizeClass == UIUserInterfaceSizeClassCompact ){
        cellWidth=(screenWidth)/2-25;
        
        CGFloat imageHeight=(cellWidth)*1.05;
        cellHeight=imageHeight+40;
        
        //        reshmy edited
        //        cellWidth = 125;
        //        cellHeight = 162;
        
    }
    else
    {
        cellWidth=(screenWidth)/2-120;
        CGFloat imageHeight=cellWidth*1.25;
        cellHeight=imageHeight+2;
    }
    NSLog(@"width %f height %f",cellWidth,cellHeight);
    
    
    return CGSizeMake(cellWidth, cellHeight);
    
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
