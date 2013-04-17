//
//  MainViewController.m
//  Premier League
//
//  Created by stevie nguyen on 4/10/13.
//  Copyright (c) 2013 Techmaster. All rights reserved.
//

#import "MainViewController.h"
#import "DataManager.h"
#import "ClubView.h"
#import "ClubViewController.h"
@interface MainViewController ()

@end

@implementation MainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    DataManager* dataManager = [DataManager sharedManager];
    UIScrollView* scrollView = [[UIScrollView alloc]initWithFrame:self.view.frame];
    NSArray* clubs = dataManager.clubs;
    int count = [clubs count];
    [scrollView setContentSize:CGSizeMake(self.view.frame.size.width, [clubs count]* (LOGO_WIDTH_HEIGHT+10+25))];
    for ( int i = 0; i< count; i++) {
        ClubView* clubView = [[ClubView alloc]initWithClub:clubs[i]];
        [clubView setCenter:CGPointMake(10 + clubView.frame.size
                                        .width/2, 10 + clubView.frame.size.height/2 + (clubView.frame.size.height+10)*i)];
        [clubView addGestureRecognizer:[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tapClub:)]];
        [scrollView addSubview:clubView];
    }
    [self.view addSubview:scrollView];
}
- (void) tapClub:(UITapGestureRecognizer*)sender{
    ClubView* clubView = (ClubView*)sender.view;
    ClubViewController* clubViewController = [[ClubViewController alloc]initWithNibName:@"ClubViewController" bundle:nil withClub:clubView.club];
    [self.navigationController pushViewController:clubViewController animated:YES];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
