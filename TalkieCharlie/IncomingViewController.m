//
//  ViewController.m
//  TalkieCharlie
//
//  Created by Ebony Nyenya on 4/23/15.
//  Copyright (c) 2015 Ebony Nyenya. All rights reserved.
//

#import "IncomingViewController.h"


@interface IncomingViewController ()

@property (strong) AVAudioPlayer *player;

@end

@implementation IncomingViewController

- (void)viewDidAppear:(BOOL)animated {
    
    [super viewDidAppear:animated];
    
    NSString *audioPath = [[NSBundle mainBundle] pathForResource: @"digital_bell_sms" ofType: @"mp3"];
    
    NSURL *soundFileURL = [NSURL fileURLWithPath:audioPath];
    
    self.player = [[AVAudioPlayer alloc] initWithContentsOfURL: soundFileURL error: nil];
    
    self.player.numberOfLoops = -1;
    
    [self.player play];

}

- (IBAction)answerFakeCall:(id)sender {
    
    NSLog(@"button pressed");
    
    [self.player stop];
    
    [self performSegueWithIdentifier:@"toAnsweredView" sender:self];
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
