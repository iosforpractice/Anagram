//
//  Level.h
//  Anagrams
//
//  Created by Puneet Rao on 19/03/15.
//  Copyright (c) 2015 Underplot ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Level : NSObject

@property (assign, nonatomic) int pointsPerTile;
@property (assign, nonatomic) int timeToSolve;
@property (strong, nonatomic) NSArray* anagrams;

+(instancetype)levelWithNum:(int)levelNum;

@end
