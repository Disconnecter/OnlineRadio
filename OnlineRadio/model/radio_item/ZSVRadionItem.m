//
//  ZSVRadionItem.m
//  OnlineRadio
//
//  Created by Zabolotnyy Sergey on 11/6/12.
//  Copyright (c) 2012 Zabolotnyy Sergey. All rights reserved.
//

#import "ZSVRadionItem.h"

@implementation ZSVRadionItem

+ (ZSVRadionItem *)radioItemWithDictionary:(NSDictionary *)dictionary
{
    ZSVRadionItem *radioItem = [[[ZSVRadionItem alloc] initWithDictionary:dictionary] autorelease];
    
    return radioItem;
}

- (id)initWithDictionary:(NSDictionary *)dictionary
{
    self = [super init];

    if (self)
    {
        self.urlString = [dictionary objectForKey:RADIO_ITEM_URL_KEY];
        self.img_url = [dictionary objectForKey:RADIO_ITEM_IMG_KEY];
        self.name = [dictionary objectForKey:RADIO_ITEM_NAME_KEY];
    }

    return self;
}

- (void)dealloc
{
    [_urlString release];
    [_img_url release];
    [_name release];
    
    [super dealloc];
}

@end
