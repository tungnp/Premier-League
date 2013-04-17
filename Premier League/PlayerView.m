//
//  PlayerView.m
//  Premier League
//
//  Created by stevie nguyen on 4/10/13.
//  Copyright (c) 2013 Techmaster. All rights reserved.
//

#import "PlayerView.h"

@implementation PlayerView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}
- (id) initWithPlayer:(Player *)player{
    if (self = [super init]) {
        self.player = player;
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
