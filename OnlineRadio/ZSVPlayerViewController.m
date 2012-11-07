//
//  ZSVPlayerViewController.m
//  OnlineRadio
//
//  Created by Zabolotnyy Sergey on 11/7/12.
//  Copyright (c) 2012 Zabolotnyy Sergey. All rights reserved.
//

#import "ZSVPlayerViewController.h"

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

- (IBAction)nextStationPressed:(UIButton *)sender
{

}

- (IBAction)previoseStationPressed:(UIButton *)sender
{

}
@end
