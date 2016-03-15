//
//  ViewController.m
//  TwoPlayerMathGame
//
//  Created by Eric Williams on 2016-03-14.
//  Copyright © 2016 Eric Williams. All rights reserved.
//

#import "ViewController.h"
#import "GameModel.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *questionOutlet;
@property (weak, nonatomic) IBOutlet UILabel *feedbackOutlet;
@property NSString *playerEntry;
@property int submitValue;
@property BOOL checkResponse;
@property GameModel *start;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Game SetUp
    self.start = [GameModel new];
    _playerEntry = @"";
    _checkResponse = NO;
    
    // Writes latest questions to Screen
    self.questionOutlet.text = self.start.question;
    _start.playerOne.response = _submitValue;
    
//    if (_checkResponse == YES) {
//        if ([self.start checkResponse:self.start.playerOne]) {
//            self.feedbackOutlet.text = @"Correct!";
//        } else {
//            self.feedbackOutlet.text =@"Wrooong!";
//        }
//    }

    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btn_1:(id)sender {
    self.playerEntry = [self.playerEntry stringByAppendingString:@"1"];
    _feedbackOutlet.text = self.playerEntry;
}
- (IBAction)btn_2:(id)sender {
    self.playerEntry = [self.playerEntry stringByAppendingString:@"2"];
    _feedbackOutlet.text = self.playerEntry;
}
- (IBAction)btn_3:(id)sender {
    self.playerEntry = [self.playerEntry stringByAppendingString:@"3"];
    _feedbackOutlet.text = self.playerEntry;
}
- (IBAction)btn_4:(id)sender {
    self.playerEntry = [self.playerEntry stringByAppendingString:@"4"];
    _feedbackOutlet.text = self.playerEntry;
}
- (IBAction)btn_5:(id)sender {
    self.playerEntry = [self.playerEntry stringByAppendingString:@"5"];
    _feedbackOutlet.text = self.playerEntry;
}
- (IBAction)btn_6:(id)sender {
    self.playerEntry = [self.playerEntry stringByAppendingString:@"6"];
    _feedbackOutlet.text = self.playerEntry;
}
- (IBAction)btn_7:(id)sender {
    self.playerEntry = [self.playerEntry stringByAppendingString:@"7"];
    _feedbackOutlet.text = self.playerEntry;
}
- (IBAction)btn_8:(id)sender {
    self.playerEntry = [self.playerEntry stringByAppendingString:@"8"];
    _feedbackOutlet.text = self.playerEntry;
}
- (IBAction)btn_9:(id)sender {
    self.playerEntry = [self.playerEntry stringByAppendingString:@"9"];
    _feedbackOutlet.text = self.playerEntry;
}
- (IBAction)btn_0:(id)sender {
    self.playerEntry = [self.playerEntry stringByAppendingString:@"0"];
    _feedbackOutlet.text = self.playerEntry;
}
- (IBAction)btn_enter:(id)sender {
   _submitValue = [self.playerEntry intValue];
//   _checkResponse = YES;
    self.start.playerOne.response = _submitValue;
    
    
    if ([self.start checkResponse:self.start.playerOne]) {
        self.feedbackOutlet.text = @"Correct!";
        } else {
            self.feedbackOutlet.text =@"Wrooong!";
        }
}
@end
