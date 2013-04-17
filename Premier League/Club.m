//
//  Club.m
//  Premier League
//
//  Created by iOS 11 on 4/9/13.
//  Copyright (c) 2013 Techmaster. All rights reserved.
//

#import "Club.h"

@implementation Club

- (id) initWithDictionary:(NSDictionary *)dictionary{
    if (self = [super init]) {
        self.name = [dictionary objectForKey:@"name"];
        self.coachName = [dictionary objectForKey:@"coach name"];
        self.logo = [UIImage imageNamed:[dictionary objectForKey:@"logo"]];
        self.score = [[dictionary objectForKey:@"score"] intValue];
        NSArray* playerDictionaries = [dictionary objectForKey:@"players"];
        NSMutableArray* tempPlayers = [NSMutableArray new];
        for ( NSDictionary* playerDictionary in playerDictionaries) {
            Player* player = [[Player alloc]initWithDictionary:playerDictionary];
            [tempPlayers addObject:player];
        }
        self.players = [NSArray arrayWithArray: tempPlayers];
        NSLog(@"%d",self.players.count);
    }
    return self;
}

@end
