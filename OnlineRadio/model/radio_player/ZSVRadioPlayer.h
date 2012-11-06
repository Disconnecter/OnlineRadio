//
//  ZSVRadioPlayer.h
//  OnlineRadio
//
//  Created by Zabolotnyy Sergey on 11/6/12.
//  Copyright (c) 2012 Zabolotnyy Sergey. All rights reserved.
//

#import <Foundation/Foundation.h>

@class AVPlayer;

@interface ZSVRadioPlayer : NSObject
{
    AVPlayer *player;
}

- (void)playRadioWithURLString:(NSString *)aUrlString;
- (void)pauseRadio;
- (void)resumePlay;

@end
