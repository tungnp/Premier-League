//
//  DataManager.h
//  Premier League
//
//  Created by iOS 11 on 4/9/13.
//  Copyright (c) 2013 Techmaster. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Club.h"
#import "Player.h"
@interface DataManager : NSObject

//  Array of Clubs
@property (nonatomic, strong) NSArray* clubs;

+ (id) sharedManager;
@end
