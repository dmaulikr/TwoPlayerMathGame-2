//
//  GameModel.m
//  TwoPlayerMathGame
//
//  Created by Eric Williams on 2016-03-14.
//  Copyright © 2016 Eric Williams. All rights reserved.
//

#import "GameModel.h"
#import "Player.h"


@implementation GameModel
-(instancetype)init
{
    
    _playAgain = YES;
    
    _numberOfPlayers = 2;
    [self createPlayers];
    [self createQuestion];

//    
//    while (_playAgain == YES) {
//        
//        [self createQuestion];
//        
//        [self createPlayers];
//        
//        
//    };
//    
    
    return self;
}
-(void)createPlayers
{
    //create a loop to create the number of players
    
    Player *newPlayerOne = [Player new];
    Player *newPlayerTwo = [Player new];
    newPlayerOne.playerName = @"Player 1";
    newPlayerTwo.playerName = @"Player 2";
    
    self.activePlayer = [NSMutableArray arrayWithCapacity:_numberOfPlayers];
    for (int a =0 ; a < _activePlayer.count; a++) {
        Player *newPlayer = [Player new];
        newPlayer.playerName = [NSString stringWithFormat: @"Player %d",a];
        self.activePlayer[a] = newPlayer;
        
        
        
        //[self.arrayOfMouths addObject:[UIImage imageNamed:[NSString stringWithFormat:@"mouth_%d.jpg",x+1]]];
    }
}
-(void)createQuestion
{
    _valueOne = arc4random() % 20+1 - 0;
    _valueTwo = arc4random() % 20+1 - 0;
    
    _questionType = arc4random() % 4+1 - 1;
    
    switch (_questionType) {
      case ADDITION_Q:
            _correctResponse = _valueOne + _valueTwo;
            // set question question
            _question = [NSString stringWithFormat:@"%d + %d",_valueOne,_valueTwo];
            //_question = @"%d + %d =",_valueOne,_valueTwo;
            //NSLog(@"%d + %d = ",_valueOne,_valueTwo);
        break;
        case SUBTRACTION_Q:
            _correctResponse = _valueOne - _valueTwo;
            // set question question
           _question = [NSString stringWithFormat:@"%d - %d",_valueOne,_valueTwo];
            NSLog(@"%d - %d = ",_valueOne,_valueTwo);
            break;
        case MULTIPLICATION_Q:
            _correctResponse = _valueOne * _valueTwo;
            // set question question
            _question = [NSString stringWithFormat:@"%d x %d",_valueOne,_valueTwo];
            NSLog(@"%d x %d = ",_valueOne,_valueTwo);
            break;
        case DIVISION_Q:
            _correctResponse = _valueOne / _valueTwo;
            // set question question
            _question = [NSString stringWithFormat:@"%d / %d",_valueOne,_valueTwo];
            NSLog(@"%d / %d = ",_valueOne,_valueTwo);
            break;
      default:
        break;
    }
}
-(BOOL)checkResponse:(Player*)activePlayer
{
    if (activePlayer.response == _correctResponse) {
        return YES;
    }
        return NO;
}
-(BOOL)checkPlayerLives:(Player*)activePlayer
{
    if (activePlayer.lives == 0) {
        [self createQuestion];
        return YES;
    }
    NSLog(@"Game Over");
    //Send Message
    return NO;
}
-(void)adjustPlayerPoints:(Player*)activePlayer
{
    activePlayer.score +=1;
}
-(void)adjustPlayerLives:(Player*)activePlayer
{
    activePlayer.lives -=1;
}
-(int)showScore:(Player*)activePlayer
{
    return activePlayer.score;
}

@end
