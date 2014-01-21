//
//  viewControllerViewController.m
//  notificationCenter
//
//  Created by Mini Mac i72 on 1/21/14.
//  Copyright (c) 2014 Mini Mac i72. All rights reserved.
//

#import "viewControllerViewController.h"
#import "childView.h"
#import "constant.h"

@interface viewControllerViewController ()

@end

@implementation viewControllerViewController

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
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(receiveTestNotification) name:@"TestNotify" object:nil];
    

    
}

- (void) receiveTestNotification:(NSNotification *) notification
{
    // [notification name] should always be @"TestNotification"
    // unless you use this method for observation of other notifications
    // as well.
    
    if ([[notification name] isEqualToString:@"TestNotify"])
        NSLog (@"Successfully received the test notification!");
}
- (void) dealloc
{
    // If you don't remove yourself as an observer, the Notification Center
    // will continue to try and send notification objects to the deallocated
    // object.
    [[NSNotificationCenter defaultCenter] removeObserver:self];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnChild:(id)sender {
    
    childView *objChild = [self.storyboard instantiateViewControllerWithIdentifier:@"childView"];
    [self presentViewController:objChild animated:YES completion:nil];
}
@end
