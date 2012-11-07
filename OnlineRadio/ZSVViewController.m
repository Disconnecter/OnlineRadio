//
//  ZSVViewController.m
//  OnlineRadio
//
//  Created by Zabolotnyy Sergey on 11/6/12.
//  Copyright (c) 2012 Zabolotnyy Sergey. All rights reserved.
//

#import "ZSVViewController.h"
#import "ZSVRadionItem.h"
#import "ZSVRadioPlayer.h"
#import "ZSVPlayerViewController.h"

@interface ZSVViewController ()

@end

@implementation ZSVViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self setTitle:@"Radio stations"];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"RadioCell"];
    if (cell == nil)
    {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                       reuseIdentifier:@"RadioCell"] autorelease];
    }

    ZSVRadionItem *radioStation = [[ZSVAppDelegate radioStations] objectAtIndex:indexPath.row];
    
    cell.textLabel.text = radioStation.name;
    
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [[ZSVAppDelegate radioStations] count];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    ZSVRadionItem *radioStation = [[ZSVAppDelegate radioStations] objectAtIndex:indexPath.row];
    
    ZSVPlayerViewController *playerViewController = [[ZSVPlayerViewController new] autorelease];
    playerViewController.logoImg.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:radioStation.img_url]]];
    [playerViewController.radioName setText:radioStation.name];
    [[ZSVAppDelegate radioPlayer] playRadioWithURLString:radioStation.urlString];
    [self.navigationController pushViewController:playerViewController animated:YES];
}

@end
