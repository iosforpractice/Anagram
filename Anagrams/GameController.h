//
//  GameController.h
//  Anagrams
//
//  Created by Puneet Rao on 19/03/15.
//  Copyright (c) 2015 Underplot ltd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Level.h"


@interface GameController : NSObject

@property (weak,nonatomic) UIView *gameView;

@property (strong,nonatomic) Level *level;

-(void)dealRandomAnagram;

@end
