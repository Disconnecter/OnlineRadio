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
    if ([_url isEqualToString:aUrlString])
    {
        return;
    }
    
    _url = [NSString stringWithString:aUrlString];
    [player pause];
    player = nil;
    player = [[AVPlayer alloc ] initWithURL:[NSURL URLWithString:_url]];
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

@end
