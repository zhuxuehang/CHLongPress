//
//  ViewController.m
//  CHLongPress
//
//  Created by hang on 13-10-29.
//  Copyright (c) 2013年 hang. All rights reserved.
//

#import "ViewController.h"
#import "CHLongPress.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSDictionary * dic = [[NSDictionary alloc] initWithObjectsAndKeys:@"abc",@"TEST", nil];
    
    UIImageView * imgView = [[UIImageView alloc] initWithFrame:CGRectMake(10, 20, 300, 200)];
    [imgView setImage:[UIImage imageNamed:@"portrait_bg"]];
    [imgView setUserInteractionEnabled:YES];
    CHLongPress *longPress = [[CHLongPress alloc] initWithTarget:self action:@selector(longPressMethod:) userInfo:dic];
    [imgView addGestureRecognizer:longPress];
    [self.view addSubview:imgView];
    [longPress release];
    [dic release];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)dealloc
{
    [super dealloc];
    
}

-(void)longPressMethod:(CHLongPress*)sender
{
    CHLongPress* te = (CHLongPress*)sender;
    if (te.state == UIGestureRecognizerStateBegan) {
        NSLog(@"%@",[te.userInfo objectForKey:@"TEST"]);
    }
    else{
        return;
    }
}

@end
