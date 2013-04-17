//
//  PlayerDetailViewController.m
//  Premier League
//
//  Created by stevie nguyen on 4/17/13.
//  Copyright (c) 2013 Techmaster. All rights reserved.
//

#import "PlayerDetailViewController.h"

@interface PlayerDetailViewController ()

@end

@implementation PlayerDetailViewController

- (id)initWithPlayer:(Player *)player
{
    self = [super init];
    if (self) {
        // Custom initialization
        self.player = player;
        UIImageView* playerImageView = [[UIImageView alloc]initWithFrame:CGRectMake(20, 20, 280, 140)];
        playerImageView.image = player.image;
        playerImageView.contentMode = UIViewContentModeScaleAspectFit;
        [self.view addSubview:playerImageView];
        
        UILabel* nameLabel = [[UILabel alloc]initWithFrame:CGRectMake(20, 168, 280, 21)];
        nameLabel.text = [NSString stringWithFormat:@"Player: %@",player.name];
        [self.view addSubview:nameLabel];
        
        UILabel* shirtLabel = [[UILabel alloc]initWithFrame:CGRectMake(20, 197, 280, 21)];
        shirtLabel.text = [NSString stringWithFormat:@"Coach: %d",player.shirtNumber];
        [self.view addSubview:shirtLabel];
        
        UILabel* goalsLabel = [[UILabel alloc]initWithFrame:CGRectMake(20, 226, 280, 21)];
        goalsLabel.text = [NSString stringWithFormat:@"Number of Goals: %d",player.numberOfGoals];
        [self.view addSubview:goalsLabel];
        
        UILabel* positionLabel = [[UILabel alloc]initWithFrame:CGRectMake(20, 255, 280, 21)];
        positionLabel.text = [NSString stringWithFormat:@"Position: %@",player.position];
        [self.view addSubview:positionLabel];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
