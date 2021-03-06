//
//  ViewController.m
//  Anagrams
//
//  Created by Marin Todorov on 16/02/2013.
//  Copyright (c) 2013 Underplot ltd. All rights reserved.
//

#import "config.h"
#import "ViewController.h"
#import "Level.h"

@interface ViewController ()
@end

@implementation ViewController

//setup the view and instantiate the game controller

-(instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self=[super initWithCoder:aDecoder];
    if (self!=nil)
    {
        self.controller=[[GameController alloc] init];
    }
    
    return self;
}

//-(id)initWithCoder:(NSCoder *)aDecoder
//{
//
//    return self;
//}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    Level* level1 = [Level levelWithNum:1];
    NSLog(@"anagrams: %@", level1.anagrams);
    
    UIView* gameLayer = [[UIView alloc] initWithFrame:CGRectMake(0, 0, kScreenWidth, kScreenHeight)];
    [self.view addSubview: gameLayer];
    
    self.controller.gameView = gameLayer;

    self.controller.level = level1;
    [self.controller dealRandomAnagram];

}

@end
