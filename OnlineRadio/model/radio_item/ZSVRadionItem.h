//
//  ZSVRadionItem.h
//  OnlineRadio
//
//  Created by Zabolotnyy Sergey on 11/6/12.
//  Copyright (c) 2012 Zabolotnyy Sergey. All rights reserved.
//

#import <Foundation/Foundation.h>

#define RADIO_ITEM_URL_KEY  @"url"
#define RADIO_ITEM_NAME_KEY @"name"
#define RADIO_ITEM_ID_KEY   @"radio_id"
#define RADIO_ITEM_IMG_KEY  @"img_url"

@interface ZSVRadionItem : NSObject

@property (nonatomic, copy) NSString *urlString;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *img_url;

+ (ZSVRadionItem *)radioItemWithDictionary:(NSDictionary *)dictionary;

@end
