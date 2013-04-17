//
//  PlayerView.h
//  Premier League
//
//  Created by stevie nguyen on 4/10/13.
//  Copyright (c) 2013 Techmaster. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Player.h"
@interface PlayerView : UIImageView

@property (nonatomic, weak) Player* player;

- (id) initWithPlayer: (Player*) player;
@end
