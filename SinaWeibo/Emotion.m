//
//  Emotion.m
//  SinaWeibo
//
//  Created by Stephy_xue on 13-10-4.
//  Copyright (c) 2013年 Stephy_xue. All rights reserved.
//

#import "Emotion.h"

@implementation Emotion

@synthesize category = _category;

@synthesize common = _common;

@synthesize hot = _hot;

@synthesize icon = _icon;

@synthesize phrase = _phrase;

@synthesize picId = _picId;

@synthesize type = _type;

@synthesize url = _url;

@synthesize value = _value;


- (void)dealloc
{
    [_category release];
    [_icon release];
    [_phrase release];
    [_picId release];
    [_type release];
    [_url release];
    [_value release];
    [super dealloc];
}


/**
 *	从字典中解析表情Emotion数据
 *
 *	@param	dic	json中的字典
 *
 *	@return	组装之后的Emotion对象
 */
+ (Emotion *)getEmotionFromJsonDic:(NSDictionary *)dic
{
    Emotion *aEmotion = [[[Emotion alloc] init] autorelease];
    aEmotion.category = [dic objectForKey:@"category"];
    aEmotion.common = [[dic objectForKey:@"common"] boolValue];
    aEmotion.hot = [[dic objectForKey:@"hot"] boolValue];
    aEmotion.icon = [dic objectForKey:@"icon"];
    aEmotion.phrase = [dic objectForKey:@"phrase"];
    aEmotion.picId = [dic objectForKey:@"picid"];
    aEmotion.type = [dic objectForKey:@"type"];
    aEmotion.url = [dic objectForKey:@"url"];
    aEmotion.value = [dic objectForKey:@"value"];
    
    return aEmotion;
}

@end
