//
//  ZSVPlayerViewController.h
//  OnlineRadio
//
//  Created by Zabolotnyy Sergey on 11/7/12.
//  Copyright (c) 2012 Zabolotnyy Sergey. All rights reserved.
//

@interface ZSVPlayerViewController : UIViewController
{
    BOOL _isPlaying;
}

@property (retain, nonatomic) IBOutlet UIImageView *logoImg;
@property (retain, nonatomic) IBOutlet UILabel *radioName;
@property (assign, nonatomic) NSInteger currentRadioID;
@end
