//
//  Player.m
//  TwoPlayerMathGame
//
//  Created by Eric Williams on 2016-03-14.
//  Copyright © 2016 Eric Williams. All rights reserved.
//

#import "Player.h"

@implementation Player

-(instancetype)init
{
    if (self = [super init]) {
        _lives = 3;
        _score = 0;
        _playerName = @"Player NaN";
    }
    return self;
}

@end
