//
//  ViewController.m
//  viewWithoutXibandStoryboard
//
//  Created by Mini Mac i72 on 1/21/14.
//  Copyright (c) 2014 Mini Mac i72. All rights reserved.
//

#import "ViewController.h"
#import "secondView.h"

@interface ViewController ()

@end

@implementation ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)loadView{
    CGRect applicationFrame = [[UIScreen mainScreen] applicationFrame];
    UIView *contentView = [[UIView alloc] initWithFrame:applicationFrame];
    contentView.backgroundColor = [UIColor whiteColor];
    self.view = contentView;
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(self.view.frame.origin.x + 10, self.view.frame.origin.y, self.view.frame.size.width - 20, self.view.frame.origin.y+40)];
    [label setText:@"Lable"];
    [self.view addSubview:label];
    
    UIButton *btnAlert = [[UIButton alloc] initWithFrame:CGRectMake(self.view.frame.origin.x + 10, self.view.frame.origin.y + 50, 150, self.view.frame.origin.y+40)];
    [btnAlert setTitle:@"Click Btn" forState:UIControlStateNormal];
    [btnAlert setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btnAlert setBackgroundColor:[UIColor greenColor]];
    [btnAlert addTarget:self action:@selector(alertThis) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnAlert];
    
    UIButton *nextView = [[UIButton alloc] initWithFrame:CGRectMake(self.view.frame.origin.x + 10, self.view.frame.origin.y + 200, 150, self.view.frame.origin.y+40)];
    [nextView setTitle:@"Next View" forState:UIControlStateNormal];
    [nextView setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [nextView setBackgroundColor:[UIColor greenColor]];
    [nextView addTarget:self action:@selector(nextViews) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:nextView];
}

-(void) alertThis
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"" message:@"Msg" delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
    [alert show];
}

-(void) nextViews
{
    secondView *second = [[secondView alloc] init];
    [self presentViewController:second animated:YES completion:nil];
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
