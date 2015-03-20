//
//  TileView.h
//  Anagrams
//
//  Created by Puneet Rao on 19/03/15.
//  Copyright (c) 2015 Underplot ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TileView : UIImageView

@property (strong,nonatomic,readonly) NSString *letter;
@property (assign,nonatomic) BOOL isMatched;

-(instancetype)initWithLetter:(NSString*)letter andSideLength:(float)sideLength;

@end
