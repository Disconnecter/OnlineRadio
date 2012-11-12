//
//  ZSVPlayerViewController.m
//  OnlineRadio
//
//  Created by Zabolotnyy Sergey on 11/7/12.
//  Copyright (c) 2012 Zabolotnyy Sergey. All rights reserved.
//

#import "ZSVPlayerViewController.h"
#import "ZSVRadionItem.h"
#import <AVFoundation/AVFoundation.h>
#import "ZSVRadioPlayer.h"

@interface ZSVPlayerViewController ()

@property (retain, nonatomic) IBOutlet UIButton *playPause;

@end

@implementation ZSVPlayerViewController

- (void)dealloc
{
    [_logoImg release];
    [_radioName release];
    [_playPause release];

    [super dealloc];
}

- (void)viewDidUnload
{
    [self setLogoImg:nil];
    [self setRadioName:nil];
    [self setPlayPause:nil];

    [super viewDidUnload];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    _isPlaying = YES;
}

- (IBAction)nextStationPressed:(UIButton *)sender
{
    _currentRadioID = (_currentRadioID + 1 >= [ZSVAppDelegate radioStations].count)?0 :_currentRadioID + 1;
    
    [self playNewRadioWithRadioItem:[[ZSVAppDelegate radioStations] objectAtIndex:_currentRadioID]];
}

- (IBAction)previoseStationPressed:(UIButton *)sender
{
    _currentRadioID = (_currentRadioID - 1 <= 0)?[ZSVAppDelegate radioStations].count - 1 :_currentRadioID - 1;
    
    [self playNewRadioWithRadioItem:[[ZSVAppDelegate radioStations] objectAtIndex:_currentRadioID]];

}

- (IBAction)playPausePresed:(UIButton *)sender
{
    (_isPlaying)? [[ZSVAppDelegate radioPlayer] pauseRadio] :[[ZSVAppDelegate radioPlayer] resumePlay];
    
    UIImage *image = (_isPlaying)? [UIImage imageNamed:@"play.png"]: [UIImage imageNamed:@"pause.png"];
    [_playPause setImage:image forState:UIControlStateNormal];
    _isPlaying = !_isPlaying;   
}

- (void)playNewRadioWithRadioItem:(ZSVRadionItem *)aRadioItem
{
    [_logoImg setImage:[UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:aRadioItem.img_url]]]];
    [_radioName setText:aRadioItem.name];
    [[ZSVAppDelegate radioPlayer] playRadioWithURLString:aRadioItem.urlString];
}

@end
