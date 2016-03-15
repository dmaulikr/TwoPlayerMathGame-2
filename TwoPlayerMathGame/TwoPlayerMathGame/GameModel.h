//
//  GameModel.h
//  TwoPlayerMathGame
//
//  Created by Eric Williams on 2016-03-14.
//  Copyright © 2016 Eric Williams. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"

enum questionType {
    ADDITION_Q = 0,
    SUBTRACTION_Q = 1,
    MULTIPLICATION_Q = 2,
    DIVISION_Q = 3
};

@interface GameModel : NSObject

@property (nonatomic,strong) Player *playerOne;
@property (nonatomic,strong) Player *playerTwo;
@property NSMutableArray *activePlayer;

@property int numberOfPlayers;
@property int questionType; //need to make enum defined above
@property int valueOne;
@property int valueTwo;
@property NSString *question;
@property int correctResponse;
@property int userResponse;
@property BOOL playAgain;

-(instancetype)init;
-(void)createPlayers;
-(void)createQuestion;
-(BOOL)checkResponse:(Player*)activePlayer;
-(BOOL)checkPlayerLives:(Player*)activePlayer;
-(void)adjustPlayerPoints:(Player*)activePlayer;
-(void)adjustPlayerLives:(Player*)activePlayer;
-(int)showScore:(Player*)activePlayer;

@end
