//
//  secondView.m
//  viewWithoutXibandStoryboard
//
//  Created by Mini Mac i72 on 1/21/14.
//  Copyright (c) 2014 Mini Mac i72. All rights reserved.
//

#import "secondView.h"

@interface secondView ()

@end

@implementation secondView

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(void)loadView
{
    CGRect applicationFram = [[UIScreen mainScreen] applicationFrame];
    UIView *view = [[UIView alloc] initWithFrame:applicationFram];
    view.backgroundColor = [UIColor whiteColor];
    self.view = view;
    
    
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
