//
//  DataManager.m
//  Premier League
//
//  Created by iOS 11 on 4/9/13.
//  Copyright (c) 2013 Techmaster. All rights reserved.
//

#import "DataManager.h"

@implementation DataManager

- (id) init{
    if (self = [super init]) {
        NSString* filePath = [[NSBundle mainBundle]pathForResource: @"clubs" ofType: @"plist"];
        NSArray* clubDictionaries = [NSArray arrayWithContentsOfFile: filePath];
        NSMutableArray* tempClubs = [NSMutableArray new];
        for ( NSDictionary* clubDictionary in clubDictionaries ) {
            Club* club = [[Club alloc] initWithDictionary:clubDictionary];
            [tempClubs addObject: club];
        }
        self.clubs = [NSArray arrayWithArray:tempClubs];
    }
    return self;
}
+ (id) sharedManager{
    static DataManager* dataManager;
    static dispatch_once_t dispatchOnce;
    dispatch_once(&dispatchOnce, ^{
        dataManager = [self new];
    });
    return dataManager;
}

@end
