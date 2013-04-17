//
//  Club.h
//  Premier League
//
//  Created by iOS 11 on 4/9/13.
//  Copyright (c) 2013 Techmaster. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"
@interface Club : NSObject

//  Name of Club
@property (nonatomic, strong) NSString* name;

//  Name of Couch
@property (nonatomic, strong) NSString* coachName;

//  Logo image
@property (nonatomic, strong) UIImage* logo;

//  Score in League
@property (nonatomic) float score;

//  Array of Players
@property (nonatomic, strong) NSArray* players;

- (id) initWithDictionary: (NSDictionary*) dictionary;
@end
