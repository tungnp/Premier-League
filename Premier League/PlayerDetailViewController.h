//
//  PlayerDetailViewController.h
//  Premier League
//
//  Created by stevie nguyen on 4/17/13.
//  Copyright (c) 2013 Techmaster. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Player.h"
@interface PlayerDetailViewController : UIViewController

@property (nonatomic, weak) Player* player;

- (id) initWithPlayer:(Player*) player;
@end
