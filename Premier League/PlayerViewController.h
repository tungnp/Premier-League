//
//  PlayerViewController.h
//  Premier League
//
//  Created by stevie nguyen on 4/17/13.
//  Copyright (c) 2013 Techmaster. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Player.h"
@interface PlayerViewController : UITableViewController <UITableViewDataSource,UITableViewDelegate>
@property (nonatomic, weak) NSArray* players;

-(id) initWithPlayers: (NSArray*) players;

@end
