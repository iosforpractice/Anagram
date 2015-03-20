//
//  GameController.m
//  Anagrams
//
//  Created by Puneet Rao on 19/03/15.
//  Copyright (c) 2015 Underplot ltd. All rights reserved.
//

#import "GameController.h"
#import "config.h"
#import "TileView.h"


@implementation GameController
{
    NSMutableArray *tiles;
    NSMutableArray *target;
}


-(void)dealRandomAnagram
{
    NSAssert(self.level.anagrams, @"no level loaded");
    
    //2 Random Index
    int randomIndex=arc4random()%[self.level.anagrams count];
    NSArray *anaPair=self.level.anagrams[randomIndex];
    
    NSString *anagram1=anaPair[0];
    NSString *anagram2=anaPair[1];
    
    int ana1len=(int)anagram1.length;
    int ana2len=(int)anagram2.length;
    
//    int ss=MAX(ana1len, ana2len);
    
//    NSLog(@"phrase1[%i]: %@", ana1len, anagram1);
//    NSLog(@"phrase2[%i]: %@", ana2len, anagram2);
  
    
    //Cell Size
    
//      NSLog(@"kScreenWidth %f",kScreenWidth);
//    NSLog(@"kScreenWidth %f",kScreenWidth*0.9/ana2len);

  //    NSLog(@"%d",MAX(ana1len, ana2len));
    float tileSide = ceilf(kScreenWidth * 0.9 / (float)MAX(ana1len, ana2len) ) - kTileMargin;
    
     NSLog(@"tileSide %f",tileSide);
    
    
    float xOffset = (kScreenWidth - MAX(ana1len, ana2len) * (tileSide + kTileMargin))/2;
    
 //   NSLog(@"xOffset 1 %f",xOffset);
    
    xOffset += tileSide/2;
    
//    NSLog(@"xOffset 2 %f",xOffset);
//
//    NSLog(@"kScreenHeight %f",kScreenHeight);
//    NSLog(@"kScreenWidth %f",kScreenWidth/4*3);

    
    tiles=[NSMutableArray arrayWithCapacity:ana1len];
    
    //2 create tiles
    for (int i=0;i<ana1len;i++)
    {
        NSString* letter = [anagram1 substringWithRange:NSMakeRange(i, 1)];
        
        //3
        if (![letter isEqualToString:@" "])
        {
            //  NSLog(@"%@",letter);
            TileView* tile = [[TileView alloc] initWithLetter:letter andSideLength:tileSide];
            
            tile.center = CGPointMake(xOffset + i*(tileSide + kTileMargin), kScreenHeight/4*3);
            
            //4
            [self.gameView addSubview:tile];
            [tiles addObject: tile];
        }
    }
    
    
}

@end
