//
//  childView.m
//  notificationCenter
//
//  Created by Mini Mac i72 on 1/21/14.
//  Copyright (c) 2014 Mini Mac i72. All rights reserved.
//

#import "childView.h"

@interface childView ()

@end

@implementation childView

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
	// Do any additional setup after loading the view.
    // All instances of TestClass will be notified
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnCallParent:(id)sender {
    
    [[NSNotificationCenter defaultCenter]
     postNotificationName:@"TestNotify"
     object:self];
}
@end
