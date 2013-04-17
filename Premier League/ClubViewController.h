//
//  ClubViewController.h
//  Premier League
//
//  Created by stevie nguyen on 4/10/13.
//  Copyright (c) 2013 Techmaster. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Club.h"

@interface ClubViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *playerButton;
@property (nonatomic, weak) Club* club;

- (id) initWithNibName:(NSString *)nibNameOrNil
                bundle:(NSBundle *)nibBundleOrNil
              withClub:(Club*)club;

@end
