//
//  Player.h
//  TwoPlayerMathGame
//
//  Created by Eric Williams on 2016-03-14.
//  Copyright © 2016 Eric Williams. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject

@property int score;
@property int lives;
@property (nonatomic, strong) NSString *playerName;
@property int response;

-(instancetype)init;

@end
