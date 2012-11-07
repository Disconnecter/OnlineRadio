//
//  ZSVAppDelegate.h
//  OnlineRadio
//
//  Created by Zabolotnyy Sergey on 11/6/12.
//  Copyright (c) 2012 Zabolotnyy Sergey. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ZSVRadioPlayer;

@interface ZSVAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (nonatomic, retain) NSArray *radioStations;
@property (nonatomic, retain) ZSVRadioPlayer *radioPlayer;

+ (NSArray *)radioStations;
+ (ZSVAppDelegate *)sharedInstance;
+ (ZSVRadioPlayer *)radioPlayer;

@end
