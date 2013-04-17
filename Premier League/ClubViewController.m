//
//  ClubViewController.m
//  Premier League
//
//  Created by stevie nguyen on 4/10/13.
//  Copyright (c) 2013 Techmaster. All rights reserved.
//

#import "ClubViewController.h"
#import "PlayerViewController.h"
@interface ClubViewController ()

@end

@implementation ClubViewController

- (id)initWithNibName:(NSString *)nibNameOrNil
               bundle:(NSBundle *)nibBundleOrNil
             withClub:(Club *)club
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.club = club;
        UIImageView* logoView = [[UIImageView alloc]initWithFrame:CGRectMake(20, 20, 280, 140)];
        logoView.image = club.logo;
        logoView.contentMode = UIViewContentModeScaleAspectFit;
        [self.view addSubview:logoView];
        
        UILabel* nameLabel = [[UILabel alloc]initWithFrame:CGRectMake(20, 168, 280, 21)];
        nameLabel.text = [NSString stringWithFormat:@"Club: %@",club.name];
        [self.view addSubview:nameLabel];
        
        UILabel* coachLabel = [[UILabel alloc]initWithFrame:CGRectMake(20, 197, 280, 21)];
        coachLabel.text = [NSString stringWithFormat:@"Coach: %@",club.coachName];
        [self.view addSubview:coachLabel];
        
        UILabel* scoreLabel = [[UILabel alloc]initWithFrame:CGRectMake(20, 226, 280, 21)];
        scoreLabel.text = [NSString stringWithFormat:@"Score: %d",(int)club.score];
        [self.view addSubview:scoreLabel];
    }
    return self;
}
- (void) tapHandle{
    PlayerViewController* playerViewController = [[PlayerViewController alloc]initWithPlayers:self.club.players];
    [self.navigationController pushViewController:playerViewController animated:YES];
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self.playerButton addGestureRecognizer: [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapHandle)]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
