//
//  ZSVViewController.m
//  OnlineRadio
//
//  Created by Zabolotnyy Sergey on 11/6/12.
//  Copyright (c) 2012 Zabolotnyy Sergey. All rights reserved.
//

#import "ZSVViewController.h"
#import "ZSVRadionItem.h"

@interface ZSVViewController ()

@end

@implementation ZSVViewController

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [[ZSVAppDelegate radioStations] count];
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

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{

}

@end
