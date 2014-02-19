//
//  CHLongPress.m
//  CHLongPress
//
//  Created by hang on 13-10-29.
//  Copyright (c) 2013年 hang. All rights reserved.
//

#import "CHLongPress.h"

@implementation CHLongPress
@synthesize userInfo = _userInfo;

-(id)initWithTarget:(id)target action:(SEL)action userInfo:(NSDictionary*)userinfo
{
    self = [super initWithTarget:target action:action];
    if (self) {
        _userInfo = [[NSDictionary alloc] initWithDictionary:userinfo];
    }
    return self;
}

-(void)dealloc
{
    [super dealloc];
    [_userInfo release];
}

@end
