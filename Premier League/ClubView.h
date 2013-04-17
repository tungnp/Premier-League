//
//  ClubView.h
//  Premier League
//
//  Created by iOS 11 on 4/9/13.
//  Copyright (c) 2013 Techmaster. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Club.h"

#define LOGO_WIDTH_HEIGHT 80
#define TEXT_WIDTH 180
#define TEXT_HEIGHT 30
#define FONT_SIZE 20

@interface ClubView : UIImageView

@property (nonatomic, weak) Club* club;

- (id) initWithClub: (Club*) club;

@end
