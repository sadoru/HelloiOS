//
//  ViewController2.m
//  HelloWorld
//
//  Created by Saitoh Sadoru on 12/05/30.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "ViewController2.h"

@interface ViewController2 ()

@end

@implementation ViewController2

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // hello, world! ラベルを追加
    UILabel *label = [[[UILabel alloc] initWithFrame:self.view.bounds] autorelease];
    label.text = @"GoodEvening, world!";
    label.textAlignment     = UITextAlignmentCenter;
    label.backgroundColor   = [UIColor blackColor];
    label.textColor         = [UIColor whiteColor];
    label.autoresizingMask  = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    
    [self.view addSubview:label];
    
    // ボタンを追加
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button setTitle:@"Change" forState:UIControlStateNormal];
    [button sizeToFit];
    
    CGPoint newPoint = self.view.center;
    newPoint.y += 50;
    button.center = newPoint;
    button.autoresizingMask = UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleBottomMargin;
    
    [button addTarget:self
               action:@selector(buttonDidPush)
     forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:button];
}

- (void)buttonDidPush
{
    // 自身を背面へ移動する
    [self.view.window sendSubviewToBack:self.view];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
