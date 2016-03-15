//
//  ViewController.h
//  TwoPlayerMathGame
//
//  Created by Eric Williams on 2016-03-14.
//  Copyright © 2016 Eric Williams. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GameModel.h"
@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *outputP1Score;
@property (weak, nonatomic) IBOutlet UILabel *outpoutP2Score;

@property (weak, nonatomic) IBOutlet UILabel *outputQuestion;
@property (weak, nonatomic) IBOutlet UILabel *outputResponse;

@end

