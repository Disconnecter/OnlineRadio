//
//  ZSVAppDelegate.m
//  OnlineRadio
//
//  Created by Zabolotnyy Sergey on 11/6/12.
//  Copyright (c) 2012 Zabolotnyy Sergey. All rights reserved.
//

#import "ZSVAppDelegate.h"
#import "ZSVViewController.h"
#import "ZSVRadionItem.h"
#import "ZSVRadioPlayer.h"

#define STATION_LIST_URL @"https://raw.github.com/Disconnecter/OnlineRadio/master/radio_list.json"

@implementation ZSVAppDelegate

+ (ZSVAppDelegate *)sharedInstance
{
    return (ZSVAppDelegate *)[UIApplication sharedApplication].delegate;
}

+ (NSArray *)radioStations
{
    return [ZSVAppDelegate sharedInstance].radioStations;
}

+ (ZSVRadioPlayer *)radioPlayer
{
    return [ZSVAppDelegate sharedInstance].radioPlayer;
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];

    [self loadStationsList];
    
    UINavigationController *navigationViewCtrl =
    [[UINavigationController alloc] initWithRootViewController:[ZSVViewController new]];
    
    self.window.rootViewController = navigationViewCtrl;
    [self.window makeKeyAndVisible];
    _radioPlayer = [ZSVRadioPlayer new];
    return YES;
}

- (void)loadStationsList
{
    NSData *stationData = [NSData dataWithContentsOfURL:[NSURL URLWithString:STATION_LIST_URL]];
    
    NSDictionary *jsonData = [NSJSONSerialization JSONObjectWithData:stationData
                                                             options:NSJSONReadingMutableContainers
                                                               error:nil];
                              
    NSArray *radioDictionaries = [jsonData objectForKey:@"radio"];
    
    NSMutableArray *radios = [[NSMutableArray alloc] initWithCapacity:[radioDictionaries count]];
    
    for (NSDictionary *radioDictionary in radioDictionaries)
    {
        [radios addObject:[ZSVRadionItem radioItemWithDictionary:radioDictionary]];
    }
    
    _radioStations = [[NSArray alloc] initWithArray:radios];
}


@end
