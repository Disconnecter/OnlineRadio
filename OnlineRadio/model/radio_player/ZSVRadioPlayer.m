//
//  ZSVRadioPlayer.m
//  OnlineRadio
//
//  Created by Zabolotnyy Sergey on 11/6/12.
//  Copyright (c) 2012 Zabolotnyy Sergey. All rights reserved.
//

#import "ZSVRadioPlayer.h"
#import <AVFoundation/AVFoundation.h>

@implementation ZSVRadioPlayer

- (void)playRadioWithURLString:(NSString *)aUrlString
{
    player = [AVPlayer playerWithURL:[NSURL URLWithString:aUrlString]];
    [[AVAudioSession sharedInstance] setCategory:AVAudioSessionCategoryPlayback error:nil];
    [player play];
}

-(void)pauseRadio
{
    if (player)
    {
        [player pause];
    }
}

-(void)resumePlay
{
    if (player)
    {
        [player play];
    }
}

- (void)dealloc
{
    [player release];
    
    [super dealloc];
}

@end
