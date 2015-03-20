//
//  Level.m
//  Anagrams
//
//  Created by Puneet Rao on 19/03/15.
//  Copyright (c) 2015 Underplot ltd. All rights reserved.
//

#import "Level.h"

@implementation Level

+(instancetype)levelWithNum:(int)levelNum
{
    NSString *fileName=[NSString stringWithFormat:@"level%i.plist",levelNum];
      NSLog(@"%@",fileName);
    NSString *levelPath= [[[NSBundle mainBundle]resourcePath] stringByAppendingPathComponent:fileName];
      NSLog(@"%@",levelPath);
    NSDictionary *levelDict=[NSDictionary dictionaryWithContentsOfFile:levelPath];
      NSLog(@"%@",levelDict);
    
    Level *l=[[Level alloc] init];

    l.pointsPerTile =(int)[[levelDict valueForKey:@"pointsPerTile"] integerValue];
    l.anagrams = levelDict[@"anagrams"];
    l.timeToSolve = [levelDict[@"timeToSolve"] intValue];
            NSLog(@"%@",l.anagrams);
    
    return l;
}

@end
