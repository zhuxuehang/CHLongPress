//
//  CHLongPress.h
//  CHLongPress
//
//  Created by hang on 13-10-29.
//  Copyright (c) 2013年 hang. All rights reserved.
//
#import <UIKit/UIKit.h>

@interface CHLongPress : UILongPressGestureRecognizer
{
    NSDictionary* _userInfo;
}
@property(nonatomic,retain) NSDictionary* userInfo;
-(id)initWithTarget:(id)target action:(SEL)action userInfo:(NSDictionary*)userinfo;
@end
