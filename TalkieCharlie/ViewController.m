//
//  ViewController.m
//  TalkieCharlie
//
//  Created by Ebony Nyenya on 4/23/15.
//  Copyright (c) 2015 Ebony Nyenya. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
   

}

- (IBAction)play:(id)sender {
    
    NSString *audioPath = [[NSBundle mainBundle] pathForResource: @"digital_bell_sms" ofType: @"mp3"];
    
    NSURL *soundFileURL = [NSURL fileURLWithPath:audioPath];
    
    AVAudioPlayer *player = [[AVAudioPlayer alloc] initWithContentsOfURL: soundFileURL error: nil];
    
    player.numberOfLoops = -1;
    
    [player play];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
