//
//  ZSVAppDelegate.m
//  OnlineRadio
//
//  Created by Zabolotnyy Sergey on 11/6/12.
//  Copyright (c) 2012 Zabolotnyy Sergey. All rights reserved.
//

#import "ZSVAppDelegate.h"
#import "ZSVViewController.h"

#define STATION_LIST_URL @"https://github.com/Disconnecter/OnlineRadio/blob/master/radio_list.json"

@implementation ZSVAppDelegate

- (void)dealloc
{
    [_window release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];

    [self loadStationsList];
    
    UINavigationController *navigationViewCtrl =
    [[[UINavigationController alloc] initWithRootViewController:[[ZSVViewController new] autorelease]] autorelease];
    
    self.window.rootViewController = navigationViewCtrl;
    [self.window makeKeyAndVisible];

    return YES;
}

- (void)loadStationsList
{
    NSData *stationData = [NSData dataWithContentsOfURL:[NSURL URLWithString:STATION_LIST_URL]];
//    NSDictionary *di = [NSDictionary dictionaryWith];
    
}


@end
