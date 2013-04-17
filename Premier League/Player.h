//
//  Player.h
//  Premier League
//
//  Created by iOS 11 on 4/9/13.
//  Copyright (c) 2013 Techmaster. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Club.h"
@interface Player : NSObject

//  Name of player
@property (nonatomic, strong) NSString* name;

//  Shirt number
@property (nonatomic) int shirtNumber;

//  Image
@property (nonatomic, strong) UIImage* image;

//  Number of goal scored in league
@property (nonatomic) int numberOfGoals;

//  Position in team
@property (nonatomic, strong) NSString* position;


- (id) initWithDictionary: (NSDictionary*) dictionary;
@end
