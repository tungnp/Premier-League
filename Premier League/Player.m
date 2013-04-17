//
//  Player.m
//  Premier League
//
//  Created by iOS 11 on 4/9/13.
//  Copyright (c) 2013 Techmaster. All rights reserved.
//

#import "Player.h"

@implementation Player

- (id) initWithDictionary:(NSDictionary *)dictionary{
    if (self = [super init]) {
        self.name = [dictionary objectForKey:@"name"];
        self.shirtNumber = [[dictionary objectForKey:@"shirt number"] intValue];
        self.image = [UIImage imageNamed:[dictionary objectForKey:@"image"]];
        self.numberOfGoals = [[dictionary objectForKey:@"number of goals"] intValue];
        self.position = [dictionary objectForKey:@"position"];
    }
    return self;
}

@end
