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

- (id)init
{
    self = [super init];
    if (self) {
        // tabBar用設定
        self.title = @"Hello2";
//        self.tabBarItem = [[[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemDownloads tag:0] autorelease];
        self.tabBarItem = [[[UITabBarItem alloc] initWithTitle:@"こんばんは" image:nil tag:1]  autorelease];
    }
    
    return self;
}

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
