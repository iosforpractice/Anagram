//
//  TileView.m
//  Anagrams
//
//  Created by Puneet Rao on 19/03/15.
//  Copyright (c) 2015 Underplot ltd. All rights reserved.
//

#import "TileView.h"
#import "config.h"

@implementation TileView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect 
 {
    // Drawing code
}
*/

- (id)initWithFrame:(CGRect)frame
{
    NSAssert(NO, @"Use initWithLetter:andSideLength instead");
    return nil;
}


-(instancetype)initWithLetter:(NSString *)letter andSideLength:(float)sideLength
{
    
    UIImage* img = [UIImage imageNamed:@"tile.png"];
    
    NSLog(@"%f",img.size.width);
    NSLog(@"%f",img.size.height);

    //create a new object
    self = [super initWithImage:img];
    
    if (self != nil)
    {
        
        //1
        
 
        
        //3 resize the tile
        NSLog(@"%f",sideLength);
        float scale = sideLength/img.size.width;\
        NSLog(@"%f",scale);
        self.frame = CGRectMake(0,0,img.size.width*scale, img.size.height*scale);
        
        //more initialization here
//        NSLog(@"%f",self.bounds.origin.x);
//        NSLog(@"%f",self.bounds.origin.y);
//        NSLog(@"self.bounds.size.height %f",self.bounds.size.height);
//        NSLog(@"self.bounds.size.width %f",self.bounds.size.width);



        
        UILabel* lblChar = [[UILabel alloc] initWithFrame:self.bounds];
        lblChar.textAlignment = NSTextAlignmentCenter;
        lblChar.textColor = [UIColor whiteColor];
        lblChar.backgroundColor = [UIColor clearColor];
        lblChar.text = [letter uppercaseString];
        lblChar.font = [UIFont fontWithName:@"Verdana-Bold" size:78.0*scale];
        
        float get=randomf(0, 50);
          NSLog(@"%f",get);
        float rotation=get/(float)99;
        
        self.transform=CGAffineTransformMakeRotation(rotation);
        
        [self addSubview: lblChar];
    }
    
    return self;
}

@end
