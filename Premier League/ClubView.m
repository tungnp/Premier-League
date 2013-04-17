//
//  ClubView.m
//  Premier League
//
//  Created by iOS 11 on 4/9/13.
//  Copyright (c) 2013 Techmaster. All rights reserved.
//

#import "ClubView.h"

@implementation ClubView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (id) initWithClub:(Club *)club{
    if (self = [super init]) {
        self.club = club;
        self.frame = CGRectMake(10, 10, 300, LOGO_WIDTH_HEIGHT+10);
        self.image = [UIImage imageNamed:@"clubViewBackground"];
        [self setUserInteractionEnabled:YES];
        
        UIImageView* logoImageView = [[UIImageView alloc]initWithImage:club.logo];
        logoImageView.contentMode = UIViewContentModeScaleAspectFit;
        logoImageView.frame = CGRectMake(5,5,LOGO_WIDTH_HEIGHT,LOGO_WIDTH_HEIGHT);
        [self addSubview:logoImageView];
        
        UILabel* nameLabel = [[UILabel alloc]initWithFrame:CGRectMake(LOGO_WIDTH_HEIGHT+5+5, 5, TEXT_WIDTH, TEXT_HEIGHT)];
        nameLabel.text = club.name;
        nameLabel.font = [UIFont systemFontOfSize:FONT_SIZE];
        [nameLabel setBackgroundColor:[UIColor clearColor]];
        [self addSubview:nameLabel];
        
        UILabel* coachLabel = [[UILabel alloc]initWithFrame:CGRectMake(LOGO_WIDTH_HEIGHT+5+5, 5+TEXT_HEIGHT+15, TEXT_WIDTH, TEXT_HEIGHT)];
        coachLabel.text = club.coachName;
        coachLabel.font = [UIFont systemFontOfSize:FONT_SIZE];
        [coachLabel setBackgroundColor:[UIColor clearColor]];
        [self addSubview:coachLabel];
        
        UIImageView* arrowView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"arrow"]];
        arrowView.frame = CGRectMake(0, 0, 10, 20);
        arrowView.center = CGPointMake(285, (LOGO_WIDTH_HEIGHT+10)/2);
        [self addSubview:arrowView];
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
